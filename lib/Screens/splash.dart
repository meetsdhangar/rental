import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/Screens/navigation.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/authController.dart';
import 'package:rental/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () async {
      final sp = await SharedPreferences.getInstance();

      if (sp.containsKey('login')) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => navigation(),
        ));
      } else {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => signin(),
        ));
      }
    });

    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/intropage1.png",
            fit: BoxFit.cover,
            height: 150,
          ),
          Image.asset("assets/images/logo.jpg"),
          Image.asset(
            "assets/images/intropage2.png",
            fit: BoxFit.cover,
            height: 150,
          ),
        ],
      )),
    );
  }
}
