import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/sayfalar/login.dart';
import '../firebase/auth.dart';
import 'signup.dart';
class forgetScreen extends StatefulWidget {
  const forgetScreen({Key? key}) : super(key: key);

  @override
  State<forgetScreen> createState() => _forgetScreenState();
}

class _forgetScreenState extends State<forgetScreen> {
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.indigo,
        title: Center(child: Text('Forget Password Page')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.volcano_rounded,
                size: 160,
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
              ),
            ),
            SizedBox(height: 30,),
            MaterialButton(
              color: Colors.indigo,
              height: 50,
              minWidth: 150,
              onPressed: () {
                _authService.Forget();

              },
              child: Text(
                'Giriş yap',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Get.to(()=>SignUp());},
                    child:Text('Kayıt Ol')),
                TextButton(onPressed: (){Get.to(()=>LoginScreen());},
                    child:Text('Giriş Yap Ekranı')),
              ],
            )

          ],
        ),
      ),
    );
  }
}



