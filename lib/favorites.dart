// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mpd/horebuSupermarket.dart';
import 'package:mpd/widget/sidemenu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FavoritesPage(),
  ));
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.greenAccent,
         drawer: const MenuDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        //bottomNavigationBar: BottomNavigationBar(
          //elevation: 1,
          //items: const <BottomNavigationBarItem>[
            //BottomNavigationBarItem(
              //icon: Icon(Icons.home),
              //label: 'Homepage',
              //backgroundColor: Colors.blueGrey,
            //),
            //BottomNavigationBarItem(
             // icon: Icon(Icons.favorite),
             // label: 'Likes',
           // ),
            //BottomNavigationBarItem(
            //  icon: Icon(Icons.add),
            //  label: 'New Sugg.',
           // ),
            //BottomNavigationBarItem(
            //  icon: Icon(Icons.person),
            //  label: 'Profile',
           // ),
        //  ],
       // ),
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Favorites",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                      ),
                    ),
                    Expanded(
                        child: ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/horebu.png"))),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HorebuPage()));
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/mac.png"))),
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/simba.png"))),
                          ),
                          const SizedBox(height: 20),
                          // main page picture
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("images/donuts.png"))),
                          ),
                           const SizedBox(height: 20),
                        ]))
                    // main page picture
                  ],
                ))));
  }
}
