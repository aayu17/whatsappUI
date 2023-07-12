import 'package:flutter/material.dart';

class callModel {
  final String name;
  final String time;
  final String photo;
  bool callIcon = true;

  callModel({
    required this.name,
    required this.time,
    required this.photo,
    this.callIcon = true,
  });
}

List<callModel> dummy = [
  // callModel(
  //     // callIcon: false,
  //     name: "Ayush",
  //     time: "6:20 pm",
  //     photo:
  //         "https://scontent-ccu1-2.cdninstagram.com/v/t51.2885-19/290291614_1172260553347278_2277120414787689664_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-ccu1-2.cdninstagram.com&_nc_cat=106&_nc_ohc=Ipw66LHTgaIAX8ms4d1&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD0GFl4AVbQGdps1ATpBQDwiumQzLpj5dixS_npxGAnpw&oe=64A936F7&_nc_sid=8b3546"),
  callModel(
      // callIcon: false,
      name: "Ayush",
      time: "6:20 pm",
      photo:"assets/images/profile.jpg",
  ),
  
  // new callModel(
  //     name: "Ishit",
  //     time: "12:20 pm",
  //     photo: "assets/images/profile.jpg"),
];
