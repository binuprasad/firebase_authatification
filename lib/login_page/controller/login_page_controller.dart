import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
   RxBool passwordVisible =false.obs;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim());
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }
  @override
  void onInit() {
   passwordVisible = false.obs;
    super.onInit();
  }

 
}
