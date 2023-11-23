import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/sayfalar/home.dart';
import 'package:untitled/sayfalar/signup.dart';
import 'forget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email,password;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;
  Future<void> _login() async {
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Giriş başarılı olduğunda yapılacak işlemler
      print(userCredential.user);
      // Ana sayfaya yönlendir
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: Center(child: Text('Login Page')),
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
                obscureText: _obscureText,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.black,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye,
                        color: !_obscureText
                            ? Colors.black.withOpacity(0.3)
                            : Colors.black),
                    onPressed: () {
                      setState(() {
                        _obscureText= !_obscureText;
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => forgetScreen());
                  },
                  child: Text('Şifremi Unuttum ?'),
                ),
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.indigo,
              height: 50,
              minWidth: 180,
                onPressed:_login,
                 child: Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Bir hesabınız yok mu ?'),
            TextButton(
                onPressed: () {
                  Get.to(() => SignUp());
                },
                child: Text('Kayıt ol'))
          ],
        ),
      ),
    );
  }
}
