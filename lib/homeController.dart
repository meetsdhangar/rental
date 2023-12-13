import 'dart:convert';

import 'package:get/get.dart';
import 'package:rental/AllUrl.dart';
import 'package:http/http.dart' as http;
import 'package:rental/Models/categoryModel.dart';
import 'package:rental/Models/productModel.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getCategory();
    getproduct1();
    super.onInit();
  }

  RxList catagoryList = [].obs;
  RxList productlist = [].obs;

  RxBool obxcheck = false.obs;

  getCategory() async {
    var response = await http.get(Uri.parse(categoryUrl));
    var decodedDate = jsonDecode(response.body);
    var mydata = decodedDate["data"]["category"];

    List newlist = mydata.map((cata) => CategoryModel.fromJson(cata)).toList();
    catagoryList.clear();
    catagoryList.addAll(newlist);

    // print(catagoryList);
  }

  RxList catlist = [].obs;
  getproduct() async {
    var response = await http.get(Uri.parse(productUrl));
    var decodedData = jsonDecode(response.body);
    var mydata = decodedData["data"]["product"];

    List newlist = mydata.map((prd) => Product.fromJson(prd)).toList();

    productlist.clear();
    productlist.addAll(newlist);

    List tempraryList = [];
    for (var cat in catagoryList) {
      List dummylist = [];
      for (var prd in productlist) {
        if (prd.category.toString() == cat.id.toString()) {
          dummylist.add(prd);
        }
      }
      tempraryList.add({
        'cataId': cat.id.toString(),
        'product': dummylist,
      });
    }

    catlist.clear();

    List mylist = tempraryList[0]['product'];
    print(mylist);
    catlist.addAll(mylist);

    print(catlist);
  }

  getproduct1() async {
    var response = await http.get(Uri.parse(productUrl));
    var decodedData = jsonDecode(response.body);
    var mydata = decodedData["data"]["product"];

    List newlist = mydata.map((prd) => Product.fromJson(prd)).toList();

    productlist.clear();
    productlist.addAll(newlist);

    var catid = catagoryList[0].id.toString();

    getCategoriwiseProduct(catid);
  }

  RxList<Product> catawisePrd = <Product>[].obs;
  RxString Selectedcatagoryid = ''.obs;

  RxInt selectedIndex = 0.obs;

  getCategoriwiseProduct(final categoryId) {
    catlist.clear();

    for (var i = 0; i < productlist.length; i++) {
      if (productlist[i].category.toString() == categoryId.toString()) {
        catlist.add(productlist[i]);
      }
    }
    print('catlist after click: $catlist');

    update();
  }
}
