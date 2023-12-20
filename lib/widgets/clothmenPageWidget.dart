import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/homeController.dart';
import 'package:rental/widgets/homepagewidgets.dart';

clothListContainer() {
  final HomeController home1 = Get.put(HomeController());
  return Container(
    height: 445,
    child: GridView.builder(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      itemCount: home1.catlist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 205,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        print(' index of catalist: ${home1.catlist[index]}');
        return Homecontainer1(context, home1.catlist[index]
            //  home1.catawisePrd[index]
            );
      },
    ),
  );
}
