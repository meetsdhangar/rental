import 'dart:convert';

import 'package:get/get.dart';
import 'package:rental/AllUrl.dart';
import 'package:http/http.dart' as http;
import 'package:rental/Models/categoryModel.dart';
import 'package:rental/Models/productModel.dart';

class HomeController extends GetxController {
  RxList catagoryList = [].obs;
  RxList productlist = [].obs;

  getCategory() async {
    var response = await http.get(Uri.parse(categoryUrl));
    var decodedDate = jsonDecode(response.body);
    var mydata = decodedDate["data"]["category"];

    List newlist = mydata.map((cata) => CategoryModel.fromJson(cata)).toList();
    catagoryList.clear();
    catagoryList.addAll(newlist);

    print(catagoryList);
  }

  getproduct() async {
    var response = await http.get(Uri.parse(productUrl));
    var decodedData = jsonDecode(response.body);
    var mydata = decodedData["data"]["product"];
    // print(mydata);
    List newlist = mydata.map((prd) => Product.fromJson(prd)).toList();
    print(newlist);
    productlist.clear();
    productlist.addAll(newlist);
  }
}
