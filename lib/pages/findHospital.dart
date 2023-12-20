import 'package:flutter/material.dart';
import 'package:healthcare/widget/navigationBottom.dart';

class FindHospital extends StatefulWidget {
  const FindHospital({super.key});

  @override
  State<FindHospital> createState() => _FindHospitalState();
}

class _FindHospitalState extends State<FindHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AppBar(
          title: Text("Find Hospital"),
        )
        
      ]),
      bottomNavigationBar: NavigationBottom(),
    );
  }
}
