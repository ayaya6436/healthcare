import 'package:flutter/material.dart';
import 'package:healthcare/model/homeModel.dart';

const HOMEDATA = [
  HomeModel(
    id: "1", 
    title: "Find the Hospital",
    description: "Find the Medical Report \n Find the Medical Report",
    color: Color.fromRGBO(253, 191, 254, 1),
    iconData: Icons.home,
    ),

    HomeModel(
    id: "2", 
    title: "Talk a Doctor",
    description: "Talk a doctor the \n Find the Medical Report",
    color: Color.fromRGBO(195, 255, 255, 1),
    iconData: Icons.chat,

    ),

    HomeModel(
    id: "3", 
    title: "Medical Report",
    description: "Find the Medical Report \n Find the Medical Report",
    color:Color.fromRGBO(252, 254, 170, 1),
    iconData:Icons.description,

    ),

    HomeModel(
    id: "4", 
    title: "First add",
    description: "Find the Medical Report \n Find the Medical Report",
    color: Color.fromRGBO(199, 234, 255, 1),
    iconData:Icons.local_hospital,

    )
];