import 'package:flutter/material.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/editaddresh.dart';

class Addresh extends StatelessWidget {
  const Addresh({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Address",
          style: TextStyle(
            color: Color(0xFF1B3E41),
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Patel Sandhya",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.78,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Porvasan ( Hanuman faliya )",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.78,
              ),
            ),
            Text(
              "Vasan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.78,
              ),
            ),
            Text(
              "Valsad, Gujarat 396375",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.78,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Text(
                  "Phone Number: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.78,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "1234567890",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.78,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Text(
                  "Email: ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.78,
                  ),
                ),
                Text(
                  "sandhya123@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.78,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              width: 315,
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFDF453E),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Edit Address",
                  style: TextStyle(
                    color: Color(0xFFDF453E),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Rents Estimates",
                  style: TextStyle(
                    color: Color(0xFF787474),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0x30CCCCCC),
                  border: Border.all(
                    width: 1,
                    color: Color(0x30CCCCCC),
                  )),
              width: 314,
              height: 45,
            ),
            SizedBox(
              height: 18,
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
                    "Estimated Rent by ",
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
                    "Estimated Rent by ",
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
                    "Estimated Rent by ",
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
              height: 24,
            ),
            button("continue", editaddresh(), context)
          ],
        ),
      ),
    ));
  }
}
