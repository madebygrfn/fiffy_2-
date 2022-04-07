import 'package:flutter/material.dart';
import 'package:mpd/favorites.dart';
import 'package:mpd/login.dart';
import 'package:mpd/profile.dart';

import '../home.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(color: Colors.greenAccent),
            // )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
             Navigator.push(context, MaterialPageRoute(builder : (context) => Home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder : (context) => ProfilePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourites'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder : (context) => FavoritesPage()))},
          ),
          // ListTile(
          //   leading: Icon(Icons.border_color),
          //   title: Text('Feedback'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder : (context) => LoginPage()))
            },
          ),
        ],
      ),
    );
  }
}
