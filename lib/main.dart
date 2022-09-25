import 'package:firebase_signin/view/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashFactory: InkRipple.splashFactory
      ),
      home:const LoginPage(),
    );
  }
}

