import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/sayfalar/login.dart';

import '../firebase/auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email, password;
  late bool obscureText;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  AuthService _authService = AuthService();

  @override
  void initState() {
    super.initState();
    obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.indigo,
        title: Center(child: Text('SignUp Page')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.volcano_rounded,
                size: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                  prefixIconColor: Colors.black,
                  labelText: 'Email giriniz',
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: emailController,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                obscureText: obscureText,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.black,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye,
                        color: !obscureText
                            ? Colors.black.withOpacity(0.3)
                            : Colors.black),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  labelText: 'Şifre giriniz',
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.indigo,
              height: 50,
              minWidth: 180,
              onPressed: () {
                _authService
                    .createPerson(emailController.text, passwordController.text)
                    .then(
                      (value) {
                        return
                        Get.to(() => LoginScreen());
                  },
                );
              },
              child: Text(
                'Kayıt Ol',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Zaten bi hesabım var"),
            TextButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: Text("Giriş Yap"))
          ],
        ),
      ),
    );
  }
}
