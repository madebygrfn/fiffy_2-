import 'package:flutter/material.dart';
import 'package:mpd/user.dart';
import 'package:mpd/user_pref.dart';
import 'package:mpd/widget/appbar_widget.dart';
import 'package:mpd/widget/profile_widget.dart';
import 'package:mpd/widget/sidemenu.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPref.myUser;

    return Scaffold(
     
      backgroundColor: Colors.greenAccent,
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
          ),
          const SizedBox(height: 40),
          buildName(user)
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.date,
            style: TextStyle(color: Colors.grey.shade500),
          ),
          const SizedBox(height: 40),
          Text(
            user.country,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 24),
          Text(
            user.answer,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 40),
          Text(
            user.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 24),
          Text(
            user.description,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      );
}

