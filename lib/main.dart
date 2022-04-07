// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mpd/login.dart';
import 'package:mpd/profile.dart';
import 'package:mpd/shopCategories.dart';
import 'package:mpd/supermarketsPage.dart';
import 'package:mpd/signup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height:MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal:30, vertical:50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget> [
                  Text(
                    "ALUSociety",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),

                  ),
                ],
              ),
              // main page picture
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration (
                  image: DecorationImage(
                    image: AssetImage("images/firstPage.png")
                  )
                ),
              ),

              Column(
                children: <Widget> [
                  Text("Your cheat sheet to all the best places in town!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:20,
                      )),
                  SizedBox(
                    height:20,
                  )
                  ,
                  // sign up
                  MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder : (context) => SignUpPage()));
                    },

                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white
                        )
                      ),

                  ),
                  SizedBox(
                    height:20,
                  )
                  // login page
                  ,MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder : (context) => LoginPage()));
                    },

                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                        "I already have an account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blueAccent
                        )
                    ),

                  ),
                ]
              )
            ],
          )
        )
      )
    );
  }
}

