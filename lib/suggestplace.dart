// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpd/suggestionplaced.dart';

class SuggestPlacePage extends StatelessWidget {
  const SuggestPlacePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Suggest a place",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Fill this form with the necessary details and the place mentioned will be added and reviewed within a week",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Column(
                        children: <Widget>[
                          inputFile(
                              label: "Name of the Place", hint: "eg. Nairobi"),
                          inputFile(
                              label: "Location",
                              obscureText: true,
                              hint: "eg.kimironko"),
                          inputFile(
                              label: "Items available here",
                              hint: "eg.foodstuffs,vegetables"),
                          inputFile(
                              label: "Appropriate tags",
                              hint: "eg.groceries,beauty"),
                          inputFile(
                              label: "Why is it beneficial to the community?",
                              hint: "eg. has affordable stuff"),
                          inputFile(
                              label: "Your initial rating", hint: "eg. 1"),
                          inputFile(label: "Additional comments")
                        ],
                      ),
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
                            onPressed: () {
                              print("Button pressed");
                              showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => SuggestionPlacedPage());
                            },
                            color: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text("Submit suggestion",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                  ],
                )
              ],
            ))));
  }
}

Widget inputFile({label, obscureText = false, hint}) {
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
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
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
