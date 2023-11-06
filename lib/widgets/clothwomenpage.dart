import 'package:flutter/material.dart';
import 'package:rental/Screens/singleproduct.dart';

clothwomen() {
  return ListView.builder(
    itemCount: 6,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 8, top: 44),
        child: Row(
          children: [
            Container(
              width: 142,
              height: 205,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 13, left: 20, right: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => singleproduct(),
                        ));
                      },
                      child: Container(
                        width: 110,
                        height: 102.02,
                        decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(3)),
                        child: Container(
                          width: 72,
                          height: 97.21,
                          child: Image.asset(
                            "assets/images/girl.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/dollar.png"),
                      SizedBox(
                        width: 7.7,
                      ),
                      Text(
                        "340 ",
                        style: TextStyle(
                          color: Color(0xFFDF453E),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.85,
                  ),
                  Text(
                    "Lehnga Choli",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              width: 142,
              height: 205,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 13, left: 20, right: 24),
                    child: Container(
                      width: 110,
                      height: 102.02,
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(3)),
                      child: Container(
                        width: 72,
                        height: 97.21,
                        child: Image.asset(
                          "assets/images/women.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/dollar.png"),
                      SizedBox(
                        width: 7.7,
                      ),
                      Text(
                        "1340 ",
                        style: TextStyle(
                          color: Color(0xFFDF453E),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.85,
                  ),
                  Text(
                    "Grown",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
