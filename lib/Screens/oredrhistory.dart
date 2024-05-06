import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/login.dart';

class orederhistory extends StatelessWidget {
  const orederhistory({super.key});

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
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(
                        "Order History",
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
                        Container(
                          width: 315,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0x30CCCCCC),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Color(0xFF787474),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.search,
                                  color: Color.fromARGB(120, 117, 117, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          height: 80,
                          width: 316,
                          color: Colors.white70,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Color(0x4CCCCCCC),
                                  child: Image.asset(
                                    width: 85,
                                    height: 70,
                                    "assets/images/women.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                " Rent on ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                " 10 march 2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 316,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 80,
                          width: 316,
                          color: Colors.white70,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Color(0x4CCCCCCC),
                                  child: Image.asset(
                                    width: 85,
                                    height: 70,
                                    "assets/images/men5.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                "Rent on ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                " 10 march 2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 316,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Container(
                          height: 80,
                          width: 316,
                          color: Colors.white70,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Color(0x4CCCCCCC),
                                  child: Image.asset(
                                    width: 85,
                                    height: 70,
                                    "assets/images/girl3.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Text(
                                "Rent on ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                " 10 march 2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
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
    ));
  }
}
