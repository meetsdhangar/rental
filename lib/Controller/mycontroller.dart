import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:rental/Models/productmodel.dart';


class myController extends GetxController {
  RxList favouratelist = [].obs;

  addremoveFavlist(index) {
    if (favouratelist.contains(index)) {
      favouratelist.remove(index);
      print(favouratelist);
    } else {
      favouratelist.add(index);
      print(favouratelist);
    }
  }

  // addToList(index) {
  //   favouratelist.add(index);
  //   print(favouratelist);
  // }

  removeFromlist(index) {
    favouratelist.removeAt(index);
    print(favouratelist);
  }

  RxList prdList = [].obs;

  getmyproducts() async {
    var api = "https://dummyjson.com/carts";

    var response = await http.get(Uri.parse(api));

    var maindata = jsonDecode(response.body);

    var cartdata = maindata['carts'][0];

    var productdata = cartdata['products'];
    //print(productdata);
    var mylist =
        productdata.map((product) => PrdModel.fromMap(product)).toList();
    prdList.clear();
    prdList.addAll(mylist);
    print(prdList);

    // var mylist =
    //     productdata.map((product) => PrdModel.fromMap(product)).toList();
    // prdList.clear();
    // prdList.addAll(mylist);
  }

  RxList myproductlist = [].obs;
  addremoveProduct(product) {
    if (myproductlist.contains(product)) {
      myproductlist.remove(product);
    } else {
      myproductlist.add(product);
    }
  }
}
