import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
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
                      ),
                      Text(
                        'User Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Register',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Forgot password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                // const SizedBox(
                //   height: 30,
                // ),
                // Row(
                //   children: const [
                //     Text('---------------------------------------------'),
                //     Text('Or'),
                //     Text('----------------------------------------------'),
                //   ],
                // ),
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
    );
  }
}
