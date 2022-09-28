import 'package:flutter/material.dart';

class ViewPageScreen extends StatelessWidget {
  const ViewPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'image/loginpagebackgroundimage.jpeg',
              ),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 70,
                  child: Image(image: AssetImage('image/person.png')),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'name',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'phone',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'email',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'password',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 20,),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: SizedBox(
                //     height: 50,
                //     width: double.infinity,
                //     child: ElevatedButton(
                //       style: ButtonStyle(
                //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(

                //         borderRadius: BorderRadius.circular(10.0),
                //         side: const BorderSide(color: Colors.blue)
                //       )
                //     ),
                //       ),
                //       onPressed: () {},
                //       child: const Text(
                //         'Login',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
