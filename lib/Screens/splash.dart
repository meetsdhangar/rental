import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rental/Screens/signin.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => signin(),
      ));
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
