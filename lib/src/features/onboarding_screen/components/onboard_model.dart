import 'package:flutter/material.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;
  Color containerColor;

  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      required this.containerColor});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Modern way to learn',
      image: 'assets/images/onboard1.png',
      containerColor: Color(0xff8A9BD7),
      discription:
          "Ask any question to your avatar, talk and chat with it and get your answers."),
  UnbordingContent(
      title: 'Magic Avatar',
      image: 'assets/images/onboard2.png',
      containerColor: Color(0xffC3D78A),
      discription:
          "Create your realistic 3D avatar, talk and chat with it whatever you want!"),
  UnbordingContent(
      title: 'Pre-Made Avatars',
      image: 'assets/images/onboard3.png',
      containerColor: Color(0xff8AD7D7),
      discription:
          "Don’t want to pay fee? Use our pre-made realistic avatars for wonderful experience."),
];
