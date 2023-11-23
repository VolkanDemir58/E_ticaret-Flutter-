import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Giriş yap fonksiyonu

  //Çıkış yap fonksiyonu
  SignOut() async {
    return await _auth.signOut();
  }

  //Kayıt ol Fonksiyonu
  Future<User?> createPerson(String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection("Person").doc(user.user!.uid).set({
      'email': email,
    });
    return user.user;
  }
  Forget() async{
    return await _auth.sendPasswordResetEmail(email:AutofillHints.email);
  }
}
