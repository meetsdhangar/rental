import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Screens/allcategory.dart';
import 'package:rental/Screens/bagitems.dart';


import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/profile.dart';

import 'package:rental/Screens/search.dart';
import 'package:rental/bookingController.dart';
import 'package:rental/homeController.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

final controller = Get.put(HomeController());
final booking = Get.put(BookingController());

List<GlobalKey<NavigatorState>> navigatorKeys =
    List.generate(5, (_) => GlobalKey<NavigatorState>());

List screen = [home(), search(), allcategory(), bagitem(), profile()];

buildNavigator() {
  return Navigator(
      key: navigatorKeys[controller.myindex.value],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => screen.elementAt(controller.myindex.value));
      });
}

class _navigationState extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: buildNavigator(),

        // screen[controller.myindex.value],
        bottomNavigationBar: CurvedNavigationBar(
            index: controller.myindex.value,
            height: 60,
            color: Color(0xFF1B3E41),
            buttonBackgroundColor: Color(0xFF1B3E41),
            backgroundColor: Colors.white,
            onTap: (index) {
              controller.myindex.value = index;
            },
            items: [
              Image.asset(
                "assets/images/home1.png",
                height: 25,
                width: 25,
              ),
              Image.asset(
                "assets/images/search1.png",
                height: 25,
                width: 25,
              ),
              Image.asset(
                "assets/images/category1.png",
                height: 20,
                width: 20,
              ),
              Image.asset(
                "assets/images/bag.png",
                height: 25,
                width: 25,
              ),
              Image.asset(
                "assets/images/person.png",
                height: 25,
                width: 25,
              ),
            ]),
      ),
    );
  }
}
