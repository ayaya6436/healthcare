import 'package:flutter/material.dart';
import 'package:healthcare/widget/navigationBottom.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      body: Column(children: [
       AppBar(
        title: Text("profile"),
       )
        ]),
        bottomNavigationBar: NavigationBottom(),
    );
  }
}