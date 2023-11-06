import 'package:flutter/material.dart';
import 'package:rental/widgets/clothkidspage.dart';
import 'package:rental/widgets/clothmenPageWidget.dart';
import 'package:rental/widgets/clothwomenpage.dart';
import 'package:rental/widgets/commonwidget.dart';

class clothmen extends StatelessWidget {
  const clothmen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cloth",
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
            left: 29,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Container(
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
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        indicator: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        indicatorColor: Colors.red,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        //indicatorPadding: EdgeInsets.only(left: 10, right: 10),
                        tabs: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xff787575), width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "Men",
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xff787575), width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "Women",
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xff787575), width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "Kids",
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  clothListContainer(), clothwomen(), kidscloth(),
                  // mencloth(context),
                  // loginView(context),
                  // mencloth(context),
                ]),
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
    ));
  }
}
