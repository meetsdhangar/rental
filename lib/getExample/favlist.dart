import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/getExample/mycontroller.dart';

class favlist extends StatelessWidget {
  const favlist({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => ListView.builder(
            itemCount: controller.favouratelist.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("index ${controller.favouratelist[index]}"),
                trailing: TextButton(
                    child: Text("Remove"),
                    onPressed: () {
                      controller.removeFromlist(index);
                    }),
              );
            }),
      ),
    );
  }
}

class favProductList extends StatelessWidget {
  const favProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => ListView.builder(
            itemCount: controller.myproductlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(" ${controller.myproductlist[index].title}"),
                trailing: TextButton(
                    child: Text("Remove"),
                    onPressed: () {
                      controller
                          .addremoveProduct(controller.myproductlist[index]);
                    }),
              );
            }),
      ),
    );
  }
}
