import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/AllUrl.dart';
import 'package:rental/Screens/commonwidget.dart';
import 'package:rental/Screens/emptybag.dart';
import 'package:rental/Screens/finalorder.dart';
import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/navigation.dart';

import 'package:rental/bookingController.dart';

class bagitem extends StatefulWidget {
  const bagitem({super.key});

  @override
  State<bagitem> createState() => _bagitemState();
}

bool selected = false;
bool openBottomsheet = false;

class _bagitemState extends State<bagitem> {
  final booking = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          backgroundColor: Color(0xFFF8F8F8),
          appBar: AppBar(
            title: Text(
              "Bag items",
              style: TextStyle(
                color: Color(0xFF1B3E41),
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    if (booking.selectedCartItemList.isEmpty) {
                      Get.snackbar('Error', "Please select items",
                          backgroundColor: Colors.red);
                    } else {
                      booking.isDeleteClick.value = true;
                    }
                  },
                  child: Icon(
                    Icons.delete,
                  ),
                ),
              )
            ],
          ),
          body: booking.cartList.length == 0
              ? emptybag()
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: booking.cartList.length,
                          itemBuilder: (context, index) {
                            return notEmptyBag(
                                context, booking.cartList[index]);
                          }),
                    ),
                    booking.selectedCartItemList.length == 0
                        ? Container()
                        : Container(height: 150)
                  ],
                ),
          bottomSheet: booking.selectedCartItemList.isNotEmpty &&
                  booking.isDeleteClick == true
              ? Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  height: 200,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Remove ${booking.selectedCartItemList.length} item",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  booking.isDeleteClick.value = false;
                                  //Navigator.pop(context);
                                },
                                child: Icon(Icons.close))
                          ],
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Text(
                          "Are you sure you want to remove ${booking.selectedCartItemList.length}  item from bag.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        button("Remove", bagitem(), context)
                      ],
                    ),
                  ),
                )
              : booking.selectedCartItemList.isNotEmpty &&
                      booking.isDeleteClick == false
                  ? Container(
                      height: 130,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total (${booking.selectedCartItemList.length} item) :",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text("₹ ${booking.selectedPrice.value}",
                                    style: TextStyle(
                                      color: Color(0xFFDF453E),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 31,
                            ),
                            button("Place order", finalorder(), context)
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: 0,
                    ),
        );
      }),
    );
  }
}

Widget notEmptyBag(context, item) {
  final booking = Get.find<BookingController>();

  return Obx(
    () => booking.obxcheck.value == true
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 317,
              height: 141,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 94.43,
                              height: 91,
                              child: Image.network(
                                imageUri + item.product.productImage[0].file,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                booking.manageSelectedList(item);
                              },
                              child: booking.selectedCartItemList.contains(item)
                                  ? Container(
                                      height: 20,
                                      width: 20,
                                      child: Icon(
                                        Icons.done,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFDF453E),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  : Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFFB2A9A9)),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.product.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "₹ ${booking.productPrice(item.selectedDays, item.product.price, item.quantity)}",
                              //"1340",
                              style: TextStyle(
                                color: Color(0xFFDF453E),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Days: ${item.selectedDays}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 95,
                                  height: 29.48,
                                  decoration: BoxDecoration(
                                    color: Color(0x30CCCCCC),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove),
                                      Container(
                                        width: 39.97,
                                        height: 28.17,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: Center(
                                            child: Text(
                                          "1",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
  );
}
