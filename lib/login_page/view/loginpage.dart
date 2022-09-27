import 'package:firebase_signin/login_page/controller/login_page_controller.dart';
import 'package:firebase_signin/user_data/view/uer_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
   LoginPage({Key? key}) : super(key: key);
  final loginController = Get.put(LoginPageController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/loginpagebackgroundimage.jpeg'),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.grey,
                        ),
                        Text(
                          'User Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40,color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Email', border: OutlineInputBorder(),
                         enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Password', border: OutlineInputBorder(),
                         enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.to(const UserData());
                          },
                          child: const Text(
                            'Create New Account',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      const Text(
                        'Forgot password?',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Sign in ')),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      const Text('OR'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SignInButton(Buttons.Facebook,
                            text: 'Sign up with Facebook', onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
