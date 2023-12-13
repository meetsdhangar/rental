import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/AllUrl.dart';
import 'package:rental/Models/productModel.dart';

import 'package:rental/Screens/singleproduct.dart';
import 'package:rental/homeController.dart';

horizontalListView(context, categoryList) {
  final HomeController home = Get.put(HomeController());

  return Obx(
    () => Container(
      height: 122,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                home.getCategoriwiseProduct(categoryList[index].id);
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => search()));
              },
              child: Container(
                height: 114,
                width: 89,
                decoration: BoxDecoration(
                    color: Color(0xFFDF453E),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 20, right: 24),
                      child: Container(
                        child: Image.network(
                          imageUri + categoryList[index].iconImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      categoryList[index].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

class Homecontainer extends StatelessWidget {
  final Product product;
  const Homecontainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142,
      height: 205,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, left: 20, right: 24),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => singleproduct(
                    product: product,
                  ),
                ));
              },
              child: Container(
                width: 110,
                height: 102.02,
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(3)),
                child: Container(
                    width: 72,
                    height: 97.21,
                    child:
                        Image.network(imageUri + product.productImage[0].file)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/dollar.png"),
              SizedBox(
                width: 7.7,
              ),
              Text(
                product.price.toString(),
                style: TextStyle(
                  color: Color(0xFFDF453E),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.85,
          ),
          Text(
            product.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

Homecontainer1(context, product) {
  final HomeController home1 = Get.put(HomeController());
  return Obx(() => home1.obxcheck == false
      ? InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => singleproduct(
                product: product,
              ),
            ));
          },
          child: Container(
            width: 142,
            height: 205,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 20, right: 24),
                  child: Container(
                    width: 110,
                    height: 102.02,
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(3)),
                    child: Container(
                        width: 72,
                        height: 97.21,
                        child: Image.network(
                            imageUri + product.productImage[0].file)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/dollar.png"),
                    SizedBox(
                      width: 7.7,
                    ),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                        color: Color(0xFFDF453E),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.85,
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      : Container());
}
