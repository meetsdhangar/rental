import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';

import 'package:rental/Screens/navigation.dart';
import 'package:rental/Screens/profile.dart';

class changepass extends StatelessWidget {
  const changepass({super.key});

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
                            builder: (context) => profile(),
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
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(
                        "Change Password",
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
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        commonContainer("Old Password", TextInputType.text),
                        SizedBox(
                          height: 16,
                        ),
                        commonContainer("New Password", TextInputType.text),
                        SizedBox(
                          height: 16,
                        ),
                        commonContainer(
                            "Confirm New Password", TextInputType.text),
                        SizedBox(height: 50),
                        button("Change Password", navigation(), context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
