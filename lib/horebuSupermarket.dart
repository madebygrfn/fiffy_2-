// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mpd/widget/sidemenu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HorebuPage(),
  ));
}

class HorebuPage extends StatelessWidget {
  const HorebuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        drawer: MenuDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.greenAccent,
        ),
        body:
        SafeArea(
            child: Container(
                width: double.infinity,
                height:MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal:30, vertical:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget> [
                        Text(
                          "Horebu Supermarket",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    // main page picture
                    Container(
                      height: MediaQuery.of(context).size.height/2.8,
                      decoration: BoxDecoration (
                          image: DecorationImage(
                              image: AssetImage("images/unsplash_-gOUx23DNks.png")
                          )
                        ),
                    ),
                    Icon(
                      Icons.place,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    // location of the store
                    Text(
                      'Located in Remera, opposite the grey Forex Bureau building. It is right next to '
                          'Ecobank Remera',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.greenAccent),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    //average stars
                    Text(
                      'Average: 4.9 stars',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.greenAccent),
                    Icon(
                      Icons.shopping_bag_sharp,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    //available items at the store
                    Text(
                      'Has: vegetables, toiletries, snacks',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.greenAccent),
                    Icon(
                      Icons.paid,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    //payment methods
                    Text(
                      'Payment options: MoMo, Cash, Card',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //money payment methods
                  ],

                )
            )
        )
    );
  }
}