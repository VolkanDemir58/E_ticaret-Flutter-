import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {Get.to(()=>LoginScreen()); });
    return Scaffold(
      backgroundColor:Colors.white24,
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                'Uygulamaya Hoşgeldiniz',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
