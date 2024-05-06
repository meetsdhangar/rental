import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/Screens/navigation.dart';
import 'package:rental/Screens/signup.dart';

import 'package:rental/Controller/authController.dart';

loginView(context) {
  final authController controller = Get.put(authController());
  var mobileController = TextEditingController();
  return Column(
    children: [
      SizedBox(
        height: 25,
      ),
      TextFormField(
        controller: mobileController,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black.withOpacity(0.5099999904632568),
        ),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 244, 244, 244),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 244, 244, 244),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 244, 244, 244),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            label: Text("Phone number")),
      ),
      SizedBox(
        height: 40,
      ),
      InkWell(
        onTap: () {
          if (mobileController.text == '') {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("please enter mobile numner")));
          } else {
            // controller.verifyMobileNumber(
            //     '+91', mobilecontroller.text, context);
          }
        },
        child: Container(
          width: 390,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              color: Color(0xff1b3e41)),
          child: Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Center(
        child: InkWell(
          // onTap: () => Get.to(forgot()),
          child: Text("forgot your password",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 223, 70, 62))),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Text(
          "or",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 223, 70, 62)),
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
            onTap: () async {
              final auth = await controller.googlesignIn();
              //  print("auth: $auth");
              log("auth: $auth");
              // final sp = await SharedPreferences.getInstance();
              // await controller.signInWithGoogle().then((value) {
              //   // sp.setBool('login', true);
              //   // Get.to(() => navigation());
              // });
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
