import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/forgotpass.dart';
import 'package:rental/Screens/login.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF1B3E41),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => login(),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 115),
                        child: Text(
                          "Sign Up",
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
                    height: 120,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
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
                            "Registration",
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
                            "Fill your account details",
                            style: TextStyle(
                              color: Color(0xFF787474),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          commonContainer("Name", TextInputType.text),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("Phone Number", TextInputType.phone),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("Email", TextInputType.emailAddress),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("Password", TextInputType.text),
                          SizedBox(height: 33),
                          button("Sign In", login(), context),
                          SizedBox(
                            height: 85,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  "Already have an account ? ",
                                  style: TextStyle(
                                      color: Color(0xFFA6A8AA),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => login(),
                                  ));
                                },
                                child: Text(
                                  "Sign-In",
                                  style: TextStyle(
                                    color: Color(0xFFDF453E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "Buying for work? ",
                                    style: TextStyle(
                                      color: Color(0xFFA6A8AA),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.28,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Create a free business account",
                                  style: TextStyle(
                                    color: Color(0xFFDF453E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
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
      ),
    );
  }
}
