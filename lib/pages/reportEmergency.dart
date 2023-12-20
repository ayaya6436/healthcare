import 'package:flutter/material.dart';
import 'package:healthcare/widget/navigationBottom.dart';

class ReportEmergency extends StatefulWidget {
  const ReportEmergency({super.key});

  @override
  State<ReportEmergency> createState() => _ReportEmergencyState();
}

class _ReportEmergencyState extends State<ReportEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(children: [
        AppBar(
          title: Text("Report Emergency"),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, top: 30, right: 8.0, bottom: 0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Incident location",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextField(
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.blueAccent,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.location_disabled),
                        hintText: "Incident location",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 8.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)))),
                SizedBox(
                  height: 16,
                ),
                Text("Comment",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      // labelText: 'Your Comments',
                      hintText: 'Enter your comments here',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0))),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Add attachments (optional)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Container(
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Add attachments"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                  
                    ],
                  ),
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Color.fromRGBO(117, 108, 161, 1)),
                      onPressed: () {},
                      child: Text(
                        "Send Report",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: NavigationBottom(),
    );
  }
}
