import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Screens/clothmen.dart';
import 'package:rental/Controller/homeController.dart';

allcatcontainer(cata) {
  final HomeController home = Get.put(HomeController());
  return Obx(
    () => home.obxcheck.value == true
        ? Container()
        : Container(
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
            child: InkWell(
              onTap: () {
               // print(cata.id);
                home.Selectedcatagoryid.value = cata.id.toString();
                home.getsubcategory(cata.id.toString()).then(
                    (value) => Get.to(() => clothmen(prdlist: home.catlist)));
              },
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 13, left: 20, right: 24),
                    child: Container(
                      child: Image.network(
                        "http://rentalhere.in/public/uploads/" + cata.iconImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    cata.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
  );
}
