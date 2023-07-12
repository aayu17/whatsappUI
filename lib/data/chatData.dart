import 'package:flutter/material.dart';

class chatModel {
  final String name;
  final String message;
  final String time;
  final String photo;
  bool grey_tick = true;

  chatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.photo,
    this.grey_tick = true,
  });
}

List<chatModel> dummy = [
  chatModel(
      grey_tick: false,
      name: "Ayush",
      message: "Hello",
      time: "6:20 pm",
      photo:"https://scontent-ccu1-2.cdninstagram.com/v/t51.2885-19/290291614_1172260553347278_2277120414787689664_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-ccu1-2.cdninstagram.com&_nc_cat=106&_nc_ohc=EFWt4eJs_1cAX8uRSOC&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAfA12idQpcwo5RKlGb_iMDdrCuviUdgvg6RpVjnO8X9w&oe=64B11FF7&_nc_sid=8b3546"),
  new chatModel(
      name: "Aman",
      message: "Hello",
      time: "5:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Ankit",
      message: "Hello",
      time: "4:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      grey_tick: false,
      name: "Pooja",
      message: "Hello",
      time: "3:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Swati",
      message: "Hello",
      time: "2:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Aditya",
      message: "Hello",
      time: "1:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Keerat",
      message: "Hello",
      time: "12:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Harshit",
      message: "Hello",
      time: "12:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Rishi",
      message: "Hello",
      time: "Yesterday",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Chanchal",
      message: "Hello",
      time: "Yesterday",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Ishu",
      message: "Hello",
      time: "Yesterday",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Sahul",
      message: "Hello",
      time: "12:20 pm",
      photo: "assets/images/profile.jpg"),
  new chatModel(
      name: "Ishit",
      message: "Hello",
      time: "12:20 pm",
      photo: "assets/images/profile.jpg"),
];
