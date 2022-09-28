import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/login_page/view/loginpage.dart';
import 'package:firebase_signin/view_page/view/view_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ( context,  snapshot) {
         if(snapshot.hasData){
          return   ViewPageScreen();

         }else{
          return LoginPage();
         }
        },
      ),
    );
  }
}