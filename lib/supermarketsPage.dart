// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mpd/horebuSupermarket.dart';
import 'package:mpd/models/supermarkets.dart';
import 'package:mpd/widget/sidemenu.dart';

import 'helpers/utils3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SupermarketsPage(),
  ));
}

// ignore: non_constant_identifier_names
List Supermarkets = Utils3.getSupermarkets();

class SupermarketsPage extends StatelessWidget {
  const SupermarketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        drawer: MenuDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Supermarkets                   ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Supermarkets.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SupermarketsPage()
                            )
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 150,
                        child: Stack(
                          children: [
                            Positioned.fill(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                        'images/' +
                                            Supermarkets[index].imgName +
                                            '.png',
                                        fit: BoxFit.cover)
                                )
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent
                                        ])),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(children: [
                                      const SizedBox(width: 10),
                                      Text(
                                        Supermarkets[index].name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      )
                                    ])))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
