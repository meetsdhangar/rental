import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/homeController.dart';
import 'package:rental/widgets/allcategorycontainer.dart';
import 'package:rental/widgets/clothcontainer.dart';

class allcategory extends StatelessWidget {
  const allcategory({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController home = Get.put(HomeController())..getCategory();
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 256,
          child: GridView.builder(
            itemCount: home.catagoryList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 120,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return allcatcontainer(index);
            },
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 25, top: 25),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           allcatcontainer("cloth", "assets/images/cloth.png"),
      //           allcatcontainer("Electronics", "assets/images/laptop.png"),
      //           allcatcontainer("Events", "assets/images/events.png")
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(left: 25, top: 25),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           allcatcontainer("Appliances", "assets/images/applience.png"),
      //           allcatcontainer(
      //             "Vehicle",
      //             "assets/images/vehicle.png",
      //           ),
      //           allcatcontainer(
      //             "Construction",
      //             "assets/images/construction.png",
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    ));
  }
}
