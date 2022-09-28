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
                fit: BoxFit.fill),
          ),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: loginController.emailcontroller,
                      decoration: const InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: TextField(
                      obscureText: true,
                      controller: loginController.passwordcontroller,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
            //             suffixIcon: IconButton(
            // icon: Icon(
            //   // Based on passwordVisible state choose the icon
            //   loginController. passwordVisible
            //    ? Icons.visibility
            //    : Icons.visibility_off,
            //    color:Colors.amber,
            //    ),
            // onPressed: () {
               
            //        _passwordVisible = !_passwordVisible;
             
            //  },
            // ),
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(
                            UserData(),
                          );
                        },
                        child: const Text(
                          'Create New Account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        'Forgot password?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                          onPressed: () {
                            loginController.signIn();
                          }, child: const Text('Sign in ')),
                    ),
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
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: const Divider(
                          thickness: 1,
                          color: Colors.white,
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
                        SizedBox(
                          height: 100,
                          child: SignInButton(
                            Buttons.Google,
                            text: "Sign up with Google",
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          height: 100,
                          child: SignInButton(Buttons.Facebook,
                              text: 'Sign up with Facebook', onPressed: () {}),
                        )
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
