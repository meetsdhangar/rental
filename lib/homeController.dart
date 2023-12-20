import 'dart:convert';

import 'package:get/get.dart';
import 'package:rental/AllUrl.dart';
import 'package:http/http.dart' as http;
import 'package:rental/Models/categoryModel.dart';
import 'package:rental/Models/productModel.dart';
import 'package:rental/Models/subcategoryModel.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getCategory();
    getproduct1();
    super.onInit();
  }

  RxInt myindex = 0.obs;
  RxList catagoryList = [].obs;
  RxList productlist = [].obs;
  RxList catlist = [].obs;
  RxBool obxcheck = false.obs;

  RxList<Product> catawisePrd = <Product>[].obs;
  RxString Selectedcatagoryid = ''.obs;

  RxInt selectedIndex = 0.obs;
  RxList subcatList = [].obs;

  getCategory() async {
    var response = await http.get(Uri.parse(categoryUrl));
    var decodedDate = jsonDecode(response.body);
    var mydata = decodedDate["data"]["category"];

    List newlist = mydata.map((cata) => CategoryModel.fromJson(cata)).toList();
    catagoryList.clear();
    catagoryList.addAll(newlist);
  }

  // getproduct() async {
  //   var response = await http.get(Uri.parse(productUrl));
  //   var decodedData = jsonDecode(response.body);
  //   var mydata = decodedData["data"]["product"];

  //   List newlist = mydata.map((prd) => Product.fromJson(prd)).toList();

  //   productlist.clear();
  //   productlist.addAll(newlist);

  //   List tempraryList = [];
  //   for (var cat in catagoryList) {
  //     List dummylist = [];
  //     for (var prd in productlist) {
  //       if (prd.category.toString() == cat.id.toString()) {
  //         dummylist.add(prd);
  //       }
  //     }
  //     tempraryList.add({
  //       'cataId': cat.id.toString(),
  //       'product': dummylist,
  //     });
  //   }

  //   catlist.clear();

  //   List mylist = tempraryList[0]['product'];

  //   catlist.addAll(mylist);
  // }

  getproduct1() async {
    var response = await http.get(Uri.parse(productUrl));
    var decodedData = jsonDecode(response.body);

    var mydata = decodedData["data"]["product"];

    List newlist = mydata.map((prd) => Product.fromJson(prd)).toList();

    productlist.clear();
    productlist.addAll(newlist);



    var catid = catagoryList[0].id.toString();
    Selectedcatagoryid.value = catid;
    getCategoriwiseProduct(catid);
  }

  getCategoriwiseProduct(final categoryId) {
    catlist.clear();

    for (var i = 0; i < productlist.length; i++) {
      if (productlist[i].category.toString() == categoryId.toString()) {
        catlist.add(productlist[i]);
      }
    }

    update();
  }

  getsubcategory(catid) async {
    var resbody = {'category_id': catid};

    var response = await http.post(Uri.parse(subCategoryUrl), body: resbody);

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      var mydata = body['data']['subcategory'];

      List newlist = mydata.map((e) => SubcategoryModel.fromJson(e)).toList();
      subcatList.clear();
      subcatList.addAll(newlist);



     //first index subcategory data
      print(subcatList);
      var subid = subcatList[0].id;
      print('subcategory id : $subid');

      getsubCategoriwiseProduct(subid);
    } else {
      print("error in retrive subcategory");
      print(response.statusCode);
    }
  }

  RxList scatalist = [].obs;
  getsubCategoriwiseProduct(final subId) {
    scatalist.clear();

    for (var i = 0; i < productlist.length; i++) {
      if (productlist[i].subcategory.toString() == subId.toString()) {
       scatalist.add(productlist[i]);
      }
    }

    update();
  }
}
