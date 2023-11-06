import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search",
              style: TextStyle(
                color: Color(0xFF1B3E41),
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 315,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0x30CCCCCC),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(120, 117, 117, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Color(0xFF787474),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Image.asset("assets/images/cross.png"),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/kid2.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Kurta & Pyjamas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            // Divider(
            //   height: 15,
            //   thickness: 3,
            //   color: Color(0xFFEBEBEB),
            // ),
            Container(
              width: 300,
              height: 2,
              decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/man.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Kurta & Pyjamas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Container(
              width: 300,
              height: 2,
              decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/men1.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Kurta & Pyjamas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Container(
              width: 300,
              height: 2,
              decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/men2.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Kurta & Pyjamas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Container(
              width: 300,
              height: 2,
              decoration: BoxDecoration(color: Color(0xFFEBEBEB)),
            ),
          ],
        ),
      ),
    ));
  }
}
