import 'package:flutter/material.dart';

class ChatItems extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final IconData iconData;

  ChatItems(this.title, this.color, this.iconData, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Icon(
                    iconData,
                    size: 40,
                    
                  ),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(description),
                ],
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        
        boxShadow: [
          BoxShadow(color: Colors.grey)
        ],
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
  }
