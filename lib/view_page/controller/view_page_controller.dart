import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class  ViewPageController extends GetxController{

  logout(){
    FirebaseAuth.instance.signOut();
  }
}