// To parse this JSON data, do
//
//     final ProductsModel = ProductsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel ProductsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String ProductsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
    String image;
    int price;
    int categoryid;
    String description;
    String productName;
    int productid;
    String qr;
    String stockQuantity;

    ProductsModel({
        required this.image,
        required this.price,
        required this.categoryid,
        required this.description,
        required this.productName,
        required this.productid,
        required this.qr,
        required this.stockQuantity,
    });

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        image: json["Image"],
        price: json["Price"],
        categoryid: json["categoryid"],
        description: json["description"],
        productName: json["product_name"],
        productid: json["productid"],
        qr: json["qr"],
        stockQuantity: json["stock_quantity"],
    );

    Map<String, dynamic> toJson() => {
        "Image": image,
        "Price": price,
        "categoryid": categoryid,
        "description": description,
        "product_name": productName,
        "productid": productid,
        "qr": qr,
        "stock_quantity": stockQuantity,
    };
}
