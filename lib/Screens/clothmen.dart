import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/homeController.dart';
import 'package:rental/widgets/clothmenPageWidget.dart';

class clothmen extends StatefulWidget {
  final List prdlist;
  const clothmen({super.key, required this.prdlist});

  @override
  State<clothmen> createState() => _clothmenState();
}

class _clothmenState extends State<clothmen> with TickerProviderStateMixin {
  final controller = Get.find<HomeController>();
  int previosindex = 0;
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: controller.subcatList.length, vsync: this);
    tabController.addListener(() {
      if (tabController.index != previosindex) {
        controller.getsubCategoriwiseProduct(
            controller.subcatList[tabController.index].id);
      }
    });
    setState(() {
      previosindex = tabController.index;
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("cat wise product list ${widget.prdlist}");

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
                      controller: tabController,
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
                            (sub) => InkWell(
                              onTap: () {
                                controller.isloading.value = true;
                                tabController.animateTo(
                                    controller.subcatList.indexOf(sub));

                                controller.getsubCategoriwiseProduct(
                                    sub.id.toString());
                                controller.isloading.value = false;
                              },
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xff787575), width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: Center(
                                    child: Text(
                                      sub.name,
                                    ),
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
                  child: controller.isloading.value == true
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : TabBarView(
                          controller: tabController,
                          children: controller.subcatList
                              .map((sub) => Container(
                                    child: clothListContainer(),
                                  ))
                              .toList(),
                        ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
