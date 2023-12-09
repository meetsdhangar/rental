import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/homeController.dart';

allcatcontainer(index) {
  final HomeController home = Get.put(HomeController())..getCategory();
  return Container(
    height: 114,
    width: 89,
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
          padding: const EdgeInsets.only(top: 13, left: 20, right: 24),
          child: Container(
            child: Image.network(
              "http://rentalhere.in/public/uploads/" +
                  home.catagoryList[index].iconImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          home.catagoryList[index].name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
