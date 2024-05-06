import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/Controller/homeController.dart';
import 'package:rental/widgets/allcategorycontainer.dart';

class allcategory extends StatelessWidget {
  const allcategory({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController home = Get.put(HomeController());
    return SafeArea(
        child: Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 30, top: 15),
            child: Text(
              "All category",
              style: TextStyle(
                color: Color(0xFF1B3E41),
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 270,
            child: GridView.builder(
              itemCount: home.catagoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 120,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return allcatcontainer(
                  home.catagoryList[index],
                );
              },
            ),
          ),
        ),
      ),
    ));
  }
}
