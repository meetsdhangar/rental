import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/Controller/AllUrl.dart';
import 'package:rental/Screens/singleproduct.dart';
import 'package:rental/Controller/homeController.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    var searchController = TextEditingController();
    controller.searchList.value = [];
    controller.searchValue.value = '';
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 15, top: 24, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Color(0xFF1B3E41),
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      controller.searchValue.value = value.toString();
                      controller.getsearchData(searchController.text);
                    },
                    controller: searchController,
                    showCursor: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      prefixIconColor: Color(0xFF787474),
                      contentPadding:
                          EdgeInsets.only(top: 13, bottom: 13, left: 20),
                      filled: true,
                      fillColor: Color(0x30CCCCCC),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Color(0xFF787474)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide:
                            BorderSide(color: Color(0x30CCCCCC), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide:
                            BorderSide(color: Color(0x30CCCCCC), width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.searchList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => singleproduct(
                                  product: controller.searchList[index],
                                ),
                              ),
                            );
                          },
                          child: controller.searchValue.value != ''
                              ? Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            width: 60,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(imageUri +
                                                    controller.searchList[index]
                                                        .productImage[0].file),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          controller.searchList[index].name,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 2,
                                    )
                                  ],
                                )
                              : Column(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
