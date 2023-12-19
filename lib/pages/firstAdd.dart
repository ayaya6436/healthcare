import 'package:flutter/material.dart';

class FirstAdd extends StatefulWidget {
  const FirstAdd({super.key});

  @override
  State<FirstAdd> createState() => _FirstAddState();
}

class _FirstAddState extends State<FirstAdd> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(children: [
       AppBar(
        title: Text("First add"),
       )
        ]),
    );
  }
}