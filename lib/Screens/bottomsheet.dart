import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Screens/bagitems.dart';
import 'package:rental/Screens/home.dart';
import 'package:rental/Screens/navigation.dart';

import 'package:rental/bookingController.dart';
import 'package:rental/homeController.dart';

Widget bottomsheet(context, product) {
  final booking = Get.put(BookingController());
  final homeController = Get.put(HomeController());
  return Obx(
    () => Container(
      width: 390,
      height: 650,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Divider(
                height: 1,
                color: Color(0xFFC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Select Days: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.90,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 5, bottom: 5),
                child: DropdownButton(
                    hint: booking.selectedDays.value == ''
                        ? Text("Select Days")
                        : Text('${booking.selectedDays.value} Days'),
                    isExpanded: true,
                    // value: booking.selectedDays.value,
                    items: booking.days
                        .map((day) => DropdownMenuItem(
                              value: day,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$day Day'.toString(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      booking.selectedDays.value = val.toString();
                      print(val);
                    }),
              ),
              Divider(
                color: Color(0xFFC4C4C4),
              ),
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Text(
                    "Select Quantity: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.90,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 145,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0x30CCCCCC),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: InkWell(
                              onTap: () {
                                booking.decrementQty();
                              },
                              child: Icon(Icons.remove)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 61,
                            height: 43,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Center(
                                child: Text(
                              booking.qty.value.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: InkWell(
                              onTap: () {
                                booking.incrementQty();
                              },
                              child: Icon(Icons.add)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Divider(
                color: Color(0xFFC4C4C4),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.90,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    booking.selectedDays.value == ''
                        ? product.price.toString()
                        : booking.totalprice(product.price),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.90,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Divider(
                color: Color(0xFFC4C4C4),
              ),
              SizedBox(
                height: 23,
              ),
              InkWell(
                onTap: () {
                  if (booking.selectedDays.value == '') {
                    Get.snackbar('error', 'Please select days',
                        backgroundColor: Colors.red);
                  } else {
                    booking.addToCartList(product);             
                    homeController.chnagetab(3);            
                  }
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  width: 315,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xFF1B3E41),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
