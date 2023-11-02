import 'package:flutter/material.dart';
import 'package:rental/widgets/commonwidget.dart';
import 'package:rental/widgets/mencloth.dart';

class clothmen extends StatelessWidget {
  const clothmen({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 29,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 50,
                    color: Color(0x30CCCCCC),
                    child: TabBar(
                        indicator: BoxDecoration(color: Colors.red),
                        indicatorColor: Colors.red,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Container(child: Text("Men")),
                          Text("Women"),
                          Text("Kids")
                        ]),
                  ),
                ),
                // Expanded(
                //   child: TabBarView(children: [
                //     mencloth(context),
                //     loginView(context),
                //     mencloth(context),
                //   ]),
                // ),
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
      ),
    ));
  }
}
