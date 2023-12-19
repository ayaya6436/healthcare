import 'package:flutter/material.dart';

class HomeModel{
  final String id;
  final String title;
  final Color color;
  final String description;
  final IconData iconData;

  const HomeModel({required this.id, required this.title,this.color=Colors.orange,required this.iconData,required this.description,});
}