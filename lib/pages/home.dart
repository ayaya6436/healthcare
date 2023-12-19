import 'package:flutter/material.dart';
import 'package:healthcare/pages/chat.dart';
import 'package:healthcare/pages/data/homeData.dart';
import 'package:healthcare/pages/findHospital.dart';
import 'package:healthcare/pages/firstAdd.dart';
import 'package:healthcare/pages/homeCategories.dart';
import 'package:healthcare/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  int screen = 0;
  List screenRoutes = [
    Home(),
    Chat(),
    FirstAdd(),
    Profile(),
  ];

  List screenHome = [
    FindHospital(),
    Chat(),
    FirstAdd(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30, right: 15.0, bottom: 0),
              child: Container(
                margin: EdgeInsets.all(37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(240, 176, 2, 1),
                      radius: 30,
                      child: Text(
                        "AK",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.notification_add),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ],
                      ),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Report Emergency",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Are you in an Emergency?\n Click to report",
                          style: TextStyle(),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text("Report emergency"),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/sid.png",
                          width: 800,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Quick link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: HOMEDATA.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screenHome[index],
                        ),
                      );
                    },
                    child: HomeCategories(
                      HOMEDATA[index].title,
                      HOMEDATA[index].color,
                      HOMEDATA[index].iconData,
                      HOMEDATA[index].description,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
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
      ),
    );
  }
}
