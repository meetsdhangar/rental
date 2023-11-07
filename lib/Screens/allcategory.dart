import 'package:flutter/material.dart';
import 'package:rental/widgets/allcategorycontainer.dart';
import 'package:rental/widgets/clothcontainer.dart';

class allcategory extends StatelessWidget {
  const allcategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30, top: 15),
          child: Text(
            "All category",
            style: TextStyle(
              color: Color(0xFF1B3E41),
              fontSize: 19,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                allcatcontainer("cloth", "assets/images/cloth.png"),
                allcatcontainer("Electronics", "assets/images/laptop.png"),
                allcatcontainer("Events", "assets/images/events.png")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                allcatcontainer("Appliances", "assets/images/applience.png"),
                allcatcontainer(
                  "Vehicle",
                  "assets/images/vehicle.png",
                ),
                allcatcontainer(
                  "Construction",
                  "assets/images/construction.png",
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
