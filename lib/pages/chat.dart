import 'package:flutter/material.dart';
import 'package:healthcare/data/chatData.dart';
import 'package:healthcare/widget/chatItems.dart';
import 'package:healthcare/widget/navigationBottom.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Column(children: [
       AppBar(
        title: Text("Chat"),
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
                          onPressed: () {
                           
                          },
                          child: Text("Connect"),
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
                itemCount: CHATDATA.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 1,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                     
                      
                    },
                    child: ChatItems(
                      CHATDATA[index].title,
                      CHATDATA[index].color,
                      CHATDATA[index].iconData,
                      CHATDATA[index].description,
                    ),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: NavigationBottom()
      );
        

   
  }
}