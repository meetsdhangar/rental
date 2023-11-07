import 'package:flutter/material.dart';
import 'package:rental/Screens/addresh.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/finalorder.dart';
import 'package:rental/Screens/signin.dart';

class editaddresh extends StatelessWidget {
  const editaddresh({super.key});

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
                      Padding(
                        padding: const EdgeInsets.only(left: 115),
                        child: Text(
                          "Edit",
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
                            "Address Details",
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
                          commonContainer("Patel Sandhya"),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("1234567890"),
                          SizedBox(
                            height: 16,
                          ),
                          commonContainer("Sandhya123@Gmail.com"),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17, top: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Porvasan ( Hanuman faliya )",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Vasan",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Valsad, Gujarat 396375",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 315,
                            height: 104,
                            decoration: BoxDecoration(
                              color: Color(0x30CCCCCC),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17, top: 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Porvasan ( Hanuman faliya )",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Vasan",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Valsad, Gujarat 396375",
                                    style: TextStyle(
                                      color: Color(0xFF787474),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 315,
                            height: 104,
                            decoration: BoxDecoration(
                              color: Color(0x30CCCCCC),
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          SizedBox(height: 15),
                          button("Save Address", finalorder(), context),
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
