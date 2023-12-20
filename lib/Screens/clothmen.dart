import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Models/productModel.dart';
import 'package:rental/homeController.dart';
import 'package:rental/widgets/clothkidspage.dart';
import 'package:rental/widgets/clothmenPageWidget.dart';
import 'package:rental/widgets/clothwomenpage.dart';
import 'package:rental/widgets/commonwidget.dart';

class clothmen extends StatelessWidget {
  final List prdlist;
  const clothmen({super.key, required this.prdlist});

  @override
  Widget build(BuildContext context) {
    print("cat wise product list $prdlist");
    final controller = Get.find<HomeController>();
    var theme = Theme.of(context);
    return Obx(
      () => SafeArea(
          child: DefaultTabController(
        length: controller.subcatList.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              controller.Selectedcatagoryid == '13'
                  ? "Cloths"
                  : controller.Selectedcatagoryid == '14'
                      ? "Electronics"
                      : controller.Selectedcatagoryid == '15'
                          ? "Events"
                          : controller.Selectedcatagoryid == '16'
                              ? "Appliances"
                              : controller.Selectedcatagoryid == '17'
                                  ? "Vehicles"
                                  : controller.Selectedcatagoryid == '18'
                                      ? "Constructions"
                                      : 'Cloths',

              //controller.getsubcategory (controller.Selectedcatagoryid.value),
              style: TextStyle(
                color: Color(0xFF1B3E41),
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              //left: 29,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(20),
                    color: Colors.white54,
                  ),
                  height: 50,
                  child: Theme(
                    data: theme.copyWith(
                      colorScheme: theme.colorScheme.copyWith(
                        surfaceVariant: Colors.transparent,
                      ),
                    ),
                    child: TabBar(
                      labelPadding: EdgeInsets.only(left: 10),
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      indicator: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      //indicatorPadding: EdgeInsets.only(left: 10, right: 10),
                      tabs: controller.subcatList
                          .map(
                            (sub) => Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color(0xff787575), width: 1),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Center(
                                  child: Text(
                                    sub.name,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    children: controller.subcatList
                        .map((sub) => Container(
                              child: clothListContainer(),
                            ))
                        .toList(),

                    //children: [

                    // , clothwomen(), kidscloth(),

                    // mencloth(context),
                    // loginView(context),
                    // mencloth(context),
                    // ]
                  ),
                ),
                // Expanded(
                //   child: TabBarView(children: [
                //     mencloth(context),
                //     loginView(context),
                //     mencloth(context),
                //   ]),
                // ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
