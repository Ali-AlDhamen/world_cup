import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Auth {

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static void showsnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Sorry error ocurred!',
        message: text,
        contentType: ContentType.failure,
      ),
      duration: const Duration(seconds: 1, milliseconds: 500),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Future<void> loginIn(String email, String password) async {
    UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  
  }

  static Future<void> signUp(String email, String password, String name,
      String address, String phone, File image , BuildContext context) async {
    
    try {
UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    final ref = FirebaseStorage.instance
        .ref()
        .child('user_image')
        .child(authResult.user!.uid + '.jpg');

    await ref.putFile(image);
    final url = await ref.getDownloadURL();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(authResult.user!.uid)
        .set({
      'name': name,
      'email': email,
      'image_url': url,
      'address': address,
      'phone': phone,
    });
  } on PlatformException catch (e) {
      if (e.code == 'user-not-found') {
        showsnackbar(context, "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        showsnackbar(context, "Wrong password provided for that user.");
      } else {
        showsnackbar(context, e.code);
      }
      
    }

    
    
}
  
    static Future<void> logout() async {
      await _auth.signOut();
    }

    static Future getUserData(){
      return FirebaseFirestore.instance.collection('users').doc(_auth.currentUser!.uid).get();


    }
}
