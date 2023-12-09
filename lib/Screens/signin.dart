import 'package:flutter/material.dart';

import 'package:rental/widgets/commonwidget.dart';

class signin extends StatelessWidget {
  
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            width: 395,
            height: 810,
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
                          padding: const EdgeInsets.only(left: 150),
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
                        padding: const EdgeInsets.only(left: 29, right: 30),
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
                            Container(
                              height: 42,
                              color: Color(0x30CCCCCC),
                              child: TabBar(
                                  indicator: BoxDecoration(color: Colors.red),
                                  indicatorColor: Colors.red,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  labelColor: Colors.white,
                                  unselectedLabelColor: Colors.black,
                                  tabs: [
                                    Container(child: Text("USER")),
                                    Text("PARTNER"),
                                  ]),
                            ),
                            Expanded(
                              child: TabBarView(children: [
                                loginView(context),
                                loginView(context)
                              ]),
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
        ),
      ),
    );
  }
}
