// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:mpd/suggestplace.dart';
import 'package:mpd/home.dart';
import 'package:mpd/signup.dart';
// import 'package:mpd/widgets/sidemenu.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.greenAccent,
      // drawer: MenuDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent,
      ),
      body: FutureBuilder(
          //SingleChildScrollView(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: MediaQuery.of(context).size.height - 50,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),

          
                        ],
                      ),
                      
                      Column(
                        children: <Widget>[
                          // TextField(
                          //   controller: emailController,
                          //   decoration: InputDecoration(hintText: "UsernameX here")
                          // ),
                          TextField(
                              controller: emailController,
                              decoration:
                                  InputDecoration(hintText: "Email here")),
                          TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password here",
                              )),
                          // inputFile(label: "Username"),
                          // inputFile(label: "Email"),
                          // inputFile(label: "Password", obscureText: true),
                          
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 0, left: 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () async {
                                FirebaseAuth auth = FirebaseAuth.instance;
                                User? user;
                                try {
                                  UserCredential userCredential =
                                      await auth.signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text);

                                  user = userCredential.user;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                } on FirebaseAuthException catch (e) {
                                  print("Hi");
                                }
                                // Navigator.push(context, MaterialPageRoute(builder : (context) => Home()));
                              },
                              color: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text("Log In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ))
                                  ),
                                  
                        ),
                      ),
                      MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder : (context) => SignUpPage()));
                    },

                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            // color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                        "Create a new account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black,
                        )
                    ),

                  ),
                    ],
                  ));
              // ],
            }
            return Center(child: Text("Hi"));
          }
          ),
    );
  }
}



// }

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
      SizedBox(
        height: 20,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            )),
      ),
      SizedBox(height: 12)
    ],
  );
}
