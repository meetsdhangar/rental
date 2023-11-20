import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/signup.dart';
import 'package:rental/Screens/verification.dart';

class forgotpass extends StatelessWidget {
  const forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => signin(),
                      ));
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
                Container(
                  width: 395,
                  height: 625,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
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
                          "Forgot Password?",
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
                          "Enter your email address to reset your ",
                          style: TextStyle(
                            color: Color(0xFF787474),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "password instruction ",
                          style: TextStyle(
                            color: Color(0xFF787474),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        commonContainer("Name"),
                        SizedBox(
                          height: 35,
                        ),
                        button("Send Link", verification(), context
                            // () {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => signup(),
                            //   ));
                            // }
                            ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
