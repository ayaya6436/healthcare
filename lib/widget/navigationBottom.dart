import 'package:flutter/material.dart';
import 'package:healthcare/pages/chat.dart';
import 'package:healthcare/pages/firstAdd.dart';
import 'package:healthcare/pages/home.dart';
import 'package:healthcare/pages/profile.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int index = 0;
  
  List screenRoutes = [
    Home(),
    Chat(),
    FirstAdd(),
    Profile(),
  ];

  // List screenHome = [
  //   FindHospital(),
  //   Chat(),
  //   FirstAdd(),
  //   Profile(),
  // ];
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          child: NavigationBar(
            backgroundColor: Colors.white,
            height: 60,
            selectedIndex: index,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            onDestinationSelected: (index) {
              setState(() => this.index = index);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => screenRoutes[index],
                ),
              );
            },
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.chat),
                selectedIcon: Icon(Icons.chat),
                label: "Chat",
              ),
              NavigationDestination(
                icon: Icon(Icons.health_and_safety),
                selectedIcon: Icon(Icons.health_and_safety),
                label: "First Aid",
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                selectedIcon: Icon(Icons.person),
                label: "Profile",
              )
            ],
          ),
        
       
     
    );
  }
}