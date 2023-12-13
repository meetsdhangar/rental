import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/forgotpass.dart';

import 'package:rental/Screens/resetpass.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/authController.dart';

class verification extends StatelessWidget {
  const verification({super.key});

  @override
  Widget build(BuildContext context) {
    final authController controller = Get.put(authController());
    String otp = '';
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          width: 395,
          height: 625,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          // borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.only(left: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 39,
                ),
                Text(
                  "Phone Verification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Enter your OTP code here ",
                  style: TextStyle(
                    color: Color(0xFF787474),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Pinput(
                  onChanged: (value) {
                    otp = value;
                  },
                  onCompleted: (value) {
                    otp = value;
                  },
                  cursor: Container(
                    height: 10,
                    width: 1,
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.circular(10),
                      )),
                  focusedPinTheme: PinTheme(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFDF453E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 84,
                ),
                InkWell(
                  onTap: () {
                    try {
                      controller.verifyOTP(otp);
                    } catch (e) {
                      if (otp.length < 6) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Please Enter 6 Digit OTP")));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Invalid OTP")));
                      }
                    }
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Verify",
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
                // button("Verify", navigation(), context),
              ],
            ),
          ),
        ),
        body: Container(
          width: 395,
          height: 812,
          decoration: BoxDecoration(
            color: Color(0xFF1B3E41),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                          color: Color(0xFFDF453E),
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 91,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
