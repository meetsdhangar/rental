import 'package:flutter/material.dart';
import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signup.dart';

import '../Screens/commonwidget.dart';
import '../Screens/forgotpass.dart';
import '../Screens/home.dart';

loginView(context) {
  return Column(
    children: [
      SizedBox(
        height: 25,
      ),
      commonContainer("Email or Phone number"),
      SizedBox(
        height: 16,
      ),
      commonContainer("Password"),
      SizedBox(height: 34),

      
      button("Sign In", navigation(), context),
      SizedBox(height: 13),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => forgotpass(),
            ));
          },
          child: Text(
            "Forgot Your Password",
            style: TextStyle(
                color: Color(0xFFDF453E),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      SizedBox(
        height: 43,
      ),
      Container(
        width: 315,
        height: 1,
        decoration: BoxDecoration(color: Color(0xFFDF453E)),
      ),
      SizedBox(
        height: 34,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => navigation(),
              ));
            },
            child: Container(
              width: 70,
              height: 45,
              child: Center(
                child: Text(
                  "G",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFD6281D),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => navigation(),
              ));
            },
            child: Container(
              width: 70,
              height: 45,
              child: Center(
                child: Text(
                  "f",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF3A58BA),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 37,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don’t have an account ? ",
            style: TextStyle(
                color: Color(0xFFA6A8AA),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => signup(),
              ));
            },
            child: Text(
              "Sign-Up",
              style: TextStyle(
                color: Color(0xFFDF453E),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      )
    ],
  );
}
