import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/getExample/favlist.dart';
import 'package:rental/getExample/mycontroller.dart';

class FavExample extends StatelessWidget {
  const FavExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myController());
    //..getmyproducts();
    controller.getmyproducts();
    return
        //  Obx(
        //   () =>
        Scaffold(
      appBar: AppBar(
        title: Text("Add to Favlist"),
      ),
      body: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Index $index"),
            trailing: InkWell(
                onTap: () {
                  controller.addremoveFavlist(index);
                },
                child: Obx(
                  () => Icon(controller.favouratelist.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_outline),
                )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => favlist());
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.favorite_outline),
      ),
    );
    // );
  }
}

class PrdExample extends StatelessWidget {
  const PrdExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(myController())..getmyproducts();
    //..getmyproducts();
    // controller.getmyproducts();
    return Obx(
      () => controller.prdList.length == 0
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text("Add to Prdlist"),
                actions: [
                  IconButton(
                      onPressed: () {
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //   content: Text("done by user"),
                        //   duration: Duration(seconds: 5),
                        //   // showCloseIcon: true,
                        //   // closeIconColor: Colors.yellow,
                        //   dismissDirection: DismissDirection.up,
                        //   action: SnackBarAction(
                        //       label: "Are you sure?", onPressed: () {}),
                        // ));

                        //Get.dialog(Text("Dialog"));

                        Get.snackbar("Ok", "All work is done",
                            snackStyle: SnackStyle.FLOATING,
                            // instantInit: false,
                            isDismissible: true,
                            colorText: Colors.white,
                            backgroundColor: Colors.deepPurple);
                      },
                      icon: Icon(Icons.done))
                ],
              ),
              body: ListView.builder(
                itemCount: controller.prdList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${controller.prdList[index].title}"),
                    trailing: InkWell(
                        onTap: () {
                          controller
                              .addremoveProduct(controller.prdList[index]);
                        },
                        child: Obx(
                          () => Icon(controller.myproductlist
                                  .contains(controller.prdList[index])
                              ? Icons.favorite
                              : Icons.favorite_outline),
                        )),
                  );
                },
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Get.to(() => favProductList());
                },
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.favorite_outline),
              ),
            ),
    );
  }
}
