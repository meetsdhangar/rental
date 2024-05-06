// To parse this JSON data, do
//
//     final prdModel = prdModelFromMap(jsonString);

import 'dart:convert';

PrdModel prdModelFromMap(String str) => PrdModel.fromMap(json.decode(str));

String prdModelToMap(PrdModel data) => json.encode(data.toMap());

class PrdModel {
    int id;
    String title;
    int price;
    int quantity;
    int total;
    double discountPercentage;
    int discountedPrice;
    String thumbnail;

    PrdModel({
        required this.id,
        required this.title,
        required this.price,
        required this.quantity,
        required this.total,
        required this.discountPercentage,
        required this.discountedPrice,
        required this.thumbnail,
    });

    factory PrdModel.fromMap(Map<String, dynamic> json) => PrdModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        quantity: json["quantity"],
        total: json["total"],
        discountPercentage: json["discountPercentage"]?.toDouble(),
        discountedPrice: json["discountedPrice"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "quantity": quantity,
        "total": total,
        "discountPercentage": discountPercentage,
        "discountedPrice": discountedPrice,
        "thumbnail": thumbnail,
    };
}