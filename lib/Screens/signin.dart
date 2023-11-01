import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/forgotpass.dart';
import 'package:rental/Screens/signup.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 395,
          height: 810,
          decoration: BoxDecoration(
            color: Color(0xFF1B3E41),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 115),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
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
                          "welcome back",
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
                          "Enter your credential login",
                          style: TextStyle(
                            color: Color(0xFF787474),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 158,
                              height: 45,
                              child: Center(
                                child: Text(
                                  "USER",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              color: Color(0xFFDF453E),
                            ),
                            Container(
                              width: 158,
                              height: 45,
                              child: Center(
                                  child: Text(
                                "PARTNER",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              color: Color(0x30CCCCCC),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        commonContainer("Email or Phone number"),
                        SizedBox(
                          height: 16,
                        ),
                        commonContainer("Password"),
                        SizedBox(height: 34),
                        button("Sign In", signup(), context),
                        SizedBox(height: 13),
                        Padding(
                          padding: const EdgeInsets.only(left: 95),
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
                                  builder: (context) => signup(),
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
                            Container(
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
                            Text(
                              "Sign-Up",
                              style: TextStyle(
                                color: Color(0xFFDF453E),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
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
