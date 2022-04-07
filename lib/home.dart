import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';
import 'package:mpd/shopCategories.dart';
import 'package:mpd/suggestplace.dart';
import 'package:mpd/widget/sidemenu.dart';

import 'helpers/utils.dart';

class Home extends StatelessWidget {
  List<Category> categories = Utils.getCategories();
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
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'What are you looking for today?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => shopCategories()
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
                                              categories[index].imgName +
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
                                          categories[index].name,
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
              ),
              MaterialButton(
                  minWidth: 15,
                  height: 40,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder : (context) => SuggestPlacePage()));
                  },
                  color: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                      "Suggest a place", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  )
                  )



              )
            ],
          ),
        ));
  }
}
