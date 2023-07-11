import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_smart_avatar/src/core/utils/constant.dart';

import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Onbording()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/icons/Ornament 2.png")),
              Spacer(),
              Center(child: Image.asset("assets/Ai Logo 1.png")),
              Spacer(),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/icons/Ornament 2.png")),
            ],
          ),
        ),
      ),
    );
  }
}
