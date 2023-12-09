import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rental/Screens/navifaton.dart';
import 'package:rental/Screens/signup.dart';
import 'package:rental/Screens/verification.dart';
import 'package:rental/authController.dart';
import 'package:rental/otpScreen.dart';

import '../Screens/commonwidget.dart';
import '../Screens/forgotpass.dart';

loginView(context) {
  final authController controller = Get.put(authController());
  var mobileController = TextEditingController();
  return Column(
    children: [
      SizedBox(
        height: 25,
      ),
      TextField(
        controller: mobileController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0x30CCCCCC),
          contentPadding: EdgeInsets.only(top: 13, bottom: 13, left: 20),
          hintText: "Enter Phone number",
          hintStyle: TextStyle(color: Color(0xFF787474)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Color(0x30CCCCCC), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
      // commonContainer("Email or Phone number"),
      SizedBox(
        height: 95,
      ),
      // commonContainer("Password"),
      // SizedBox(height: 34),
      InkWell(
        onTap: () {
          if (mobileController.text == '') {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Please Enter mobile no")));
          }
          if (mobileController.length < 10) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Please Enter 10 Digit mobile no")));
          } else {
            controller.verifyMobileNumber(
                "+91", mobileController.text, context);
          }
        },
        child: Container(
          child: Center(
            child: Text(
              "Send Otp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          width: 315,
          height: 45,
          decoration: BoxDecoration(
              color: Color(0xFF1B3E41),
              borderRadius: BorderRadius.circular(40)),
        ),
      ),

      //button("Send Otp", verification(), context),
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
            "Forgot Your Password ?",
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
