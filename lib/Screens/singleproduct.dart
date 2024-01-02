import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rental/Models/productModel.dart';

import 'package:rental/Screens/bottomsheet.dart';
import 'package:rental/bookingController.dart';
import 'package:rental/homeController.dart';

import 'package:rental/widgets/singleprow.dart';

class singleproduct extends StatelessWidget {
  final Product product;
  const singleproduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final booking = Get.put(BookingController())..checkItemInCart(product);
    final home = Get.find<HomeController>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 229,
                  width: 315,
                  child: PageView.builder(
                    itemCount: product.productImage.length,
                    itemBuilder: (context, index) {
                      print(product.productImage[index]);
                      return scontainer(
                        product.productImage[index].file,
                      );
                    },
                  )),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFDF453E),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white70),
                child: Padding(
                  padding: const EdgeInsets.only(top: 29, left: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${product.name}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 314,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/dollar.png"),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "${product.price}",
                            style: TextStyle(
                              color: Color(0xFFDF453E),
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "${product.description}",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            letterSpacing: (0.50),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: 375,
                        height: 7,
                        decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      product.clothdata.isEmpty
                          ? Container()
                          : Column(
                              children: [
                                Text(
                                  "Product Details:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    height: 0.09,
                                    letterSpacing: 0.90,
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Column(
                                    children: [
                                      // singlep("Material  :", "Silk"),
                                      // SizedBox(
                                      //   height: 12,
                                      // ),
                                      singlep("Color       :",
                                          "${product.clothdata[0].colour}"),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      singlep("Sizes       :",
                                          "${product.clothdata[0].size}"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Color(0xFFF8F8F8),
          height: 64,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xBFDF453E),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                        )),
                    child: Container(
                      width: 190,
                      decoration: BoxDecoration(
                        color: Color(0xFFDF453E),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                      ),
                      child: Center(
                        child: Text(
                          "Call Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      if (booking.iscontain == false) {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (builder) =>
                                bottomsheet(context, product));
                      } else {
                        home.chnagetab(3);
                        //Get.to(() => bagitem());
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xBFDF453E),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                          )),
                      child: Center(
                        child: Text(
                          booking.iscontain == false
                              ? "Book Now"
                              : "Already Booked",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
