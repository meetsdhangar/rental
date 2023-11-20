import 'package:flutter/material.dart';
import 'package:rental/route.dart';



horizontalListView(context) {
  return Container(
    height: 122,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      itemCount: 8,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              //Navigator.pu
              Navigator.of(context).pushNamed(myRoute.clothmenRoute);

              //Navigator.of(context).pushNamed("/clothmen");

              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => clothmen(),
              // ));
            },
            child: Container(
              height: 114,
              width: 89,
              decoration: BoxDecoration(
                  color: Color(0xFFDF453E),
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
                      child: Image.asset(
                        "assets/images/cloth.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Cloth",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
