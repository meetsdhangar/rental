import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental/AllUrl.dart';
import 'package:rental/Screens/clothmen.dart';
import 'package:rental/Screens/signin.dart';
import 'package:rental/Screens/singleproduct.dart';
import 'package:rental/homeController.dart';
import 'package:rental/widgets/homepagewidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController home1 = Get.put(HomeController());
    return SafeArea(
      child: Obx(() {
        return home1.productlist.length > 3
            ? Scaffold(
                backgroundColor: Color(0xFFF8F8F8),
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "RENTAL",
                      style: TextStyle(
                        color: Color(0xFF1B3E41),
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 31),
                      child: InkWell(
                        onTap: () async {
                          SharedPreferences sp =
                              await SharedPreferences.getInstance();
                          sp.clear();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => signin()),
                              (route) => false);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/prof.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 31, left: 15, right: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
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
                              borderSide: BorderSide(
                                  color: Color(0x30CCCCCC), width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                  color: Color(0x30CCCCCC), width: 2),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 26,
                        ),

                        Container(
                          height: 122,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: home1.catagoryList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    home1.Selectedcatagoryid.value =
                                        home1.catagoryList[index].id.toString();

                                    home1.getCategoriwiseProduct(
                                        home1.catagoryList[index].id);
                                    home1.selectedIndex.value = index;
                                  },
                                  child: Container(
                                    height: 114,
                                    width: 89,
                                    decoration: BoxDecoration(
                                        color: home1.selectedIndex == index
                                            ? Color(0xFFDF453E)
                                            : Colors.white,
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
                                          padding: const EdgeInsets.only(
                                              top: 13, left: 20, right: 24),
                                          child: Container(
                                            child: Image.network(
                                              imageUri +
                                                  home1.catagoryList[index]
                                                      .iconImage,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          home1.catagoryList[index].name,
                                          style: TextStyle(
                                            color: home1.selectedIndex == index
                                                ? Colors.white
                                                : Colors.black,
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

                        // horizontalListView(context,home1.catagoryList),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trending Products",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xFFDF453E),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        home1.productlist.length > 0
                            ? Container(
                                height: 445,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: 205,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Homecontainer(
                                      product: home1.productlist[index],
                                    );
                                  },
                                ),
                              )
                            : Container(),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              home1.Selectedcatagoryid == '13'
                                  ? "Cloths"
                                  : home1.Selectedcatagoryid == '14'
                                      ? "Electronics"
                                      : home1.Selectedcatagoryid == '15'
                                          ? "Events"
                                          : home1.Selectedcatagoryid == '16'
                                              ? "Appliances"
                                              : home1.Selectedcatagoryid == '17'
                                                  ? "Vehicles"
                                                  : home1.Selectedcatagoryid ==
                                                          '18'
                                                      ? "Constructions"
                                                      : 'Cloths',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                home1.getsubcategory(
                                    home1.Selectedcatagoryid.value);

                                Get.to(() => clothmen(prdlist:home1.catlist ));
                              },
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  color: Color(0xFFDF453E),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 445,
                          child: GridView.builder(
                            itemCount: 4,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 205,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              print(
                                  ' index of catalist: ${home1.catlist[index]}');
                              return Homecontainer1(
                                  context, home1.catlist[index]
                                  //  home1.catawisePrd[index]
                                  );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
      }),
    );
  }
}
