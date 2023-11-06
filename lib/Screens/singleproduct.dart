import 'package:flutter/material.dart';
import 'package:rental/widgets/singleprow.dart';

class singleproduct extends StatelessWidget {
  const singleproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 229,
                width: 315,
                child: PageView(
                  children: [
                    scontainer("assets/images/women3.png"),
                    scontainer("assets/images/women.png"),
                    scontainer("assets/images/girl.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFDF453E),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              Container(
                width: 375,
                height: 479,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white70),
                child: Padding(
                  padding: const EdgeInsets.only(top: 29, left: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lehnga Choli",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 314,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/dollar.png"),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "2000 ",
                            style: TextStyle(
                              color: Color(0xFFDF453E),
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: 375,
                        height: 7,
                        decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        "Product Details:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                          letterSpacing: 0.90,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Column(
                          children: [
                            singlep("Material  :", "Silk"),
                            SizedBox(
                              height: 12,
                            ),
                            singlep("Color       :", "Brown, Grey, Nude, Red"),
                            SizedBox(
                              height: 12,
                            ),
                            singlep("Sizes       :", "XS, S, Medium, L, XL"),
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
    );
  }
}
