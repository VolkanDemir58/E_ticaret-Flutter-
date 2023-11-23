import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled/sayfalar/home.dart';
import 'package:untitled/sayfalar/login.dart';
import 'firebase/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DatabaseReference database = FirebaseDatabase.instance.reference();
  runApp(MyApp(database));
}

class MyApp extends StatelessWidget {
  final DatabaseReference database;
  MyApp(this.database);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'Uygulamaya hoşgeldin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:StreamBuilder(stream:FirebaseAuth.instance.authStateChanges()
          ,builder:(ctx,snapShot) {
        if(snapShot.hasData){
          return HomePage();
        }
        else{
          return LoginScreen();
        }
        }, )
    );
  }
}


