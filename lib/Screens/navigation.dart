import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rental/Screens/allcategory.dart';
import 'package:rental/Screens/bagitems.dart';
import 'package:rental/Screens/changepassword.dart';
import 'package:rental/Screens/checkout.dart';
import 'package:rental/Screens/editprofile.dart';
import 'package:rental/Screens/emptybag.dart';

import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/profile.dart';

import 'package:rental/Screens/search.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

int myindex = 0;
List screen = [home(), search(), allcategory(), emptybag(), profile()];

class _navigationState extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[myindex],
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: Color(0xFF1B3E41),
          buttonBackgroundColor: Color(0xFF1B3E41),
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          items: [
            Image.asset(
              "assets/images/home1.png",
              height: 25,
              width: 25,
            ),
            Image.asset(
              "assets/images/search1.png",
              height: 25,
              width: 25,
            ),
            Image.asset(
              "assets/images/category1.png",
              height: 20,
              width: 20,
            ),
            Image.asset(
              "assets/images/bag.png",
              height: 25,
              width: 25,
            ),
            Image.asset(
              "assets/images/person.png",
              height: 25,
              width: 25,
            ),
          ]),
    );
  }
}
