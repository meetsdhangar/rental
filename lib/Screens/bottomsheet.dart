import 'package:flutter/material.dart';
import 'package:rental/Screens/checkout.dart';

Widget bottomsheet(context) {
  return Container(
    width: 390,
    height: 650,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Book Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => checkout(),
                    ));
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Divider(
              height: 1,
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select Days: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.90,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: 315,
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(13)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Select Days",
                      style: TextStyle(
                        color: Color(0xFF787474),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Color.fromARGB(120, 117, 117, 1),
                  )
                ],
              ),
            ),
            Container(
              width: 312,
              height: 142,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 day",
                      style: TextStyle(
                        color: Color(0xFF787575),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(color: Color(0xFFC4C4C4)),
                    Text(
                      "2 day",
                      style: TextStyle(
                        color: Color(0xFF787575),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(color: Color(0xFFC4C4C4)),
                    Text(
                      "3 day",
                      style: TextStyle(
                        color: Color(0xFF787575),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Text(
                  "Select Quantity: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.90,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 145,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0x30CCCCCC),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.remove),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 61,
                          height: 43,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.add),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Divider(
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(height: 17),
            Row(
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.90,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "2000",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.90,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Divider(
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(
              height: 23,
            ),
            // button("abc", home(), context)
          ],
        ),
      ),
    ),
  );
}
