// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  bool success;
  List<ProductElement> products;

  Product({
    required this.success,
    required this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    success: json["success"],
    products: List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class ProductElement {
  String id;
  String name;
  dynamic description;
  String stockStatus;
  dynamic manufacturer;
  String quantity;
  dynamic reviews;
  String price;
  String thumb;
  bool special;
  int rating;

  ProductElement({
    required this.id,
    required this.name,
    required this.description,
    required this.stockStatus,
    required this.manufacturer,
    required this.quantity,
    required this.reviews,
    required this.price,
    required this.thumb,
    required this.special,
    required this.rating,
  });

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    stockStatus: json["stock_status"],
    manufacturer: json["manufacturer"],
    quantity: json["quantity"],
    reviews: json["reviews"],
    price: json["price"],
    thumb: json["thumb"],
    special: json["special"],
    rating: json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "stock_status": stockStatus,
    "manufacturer": manufacturer,
    "quantity": quantity,
    "reviews": reviews,
    "price": price,
    "thumb": thumb,
    "special": special,
    "rating": rating,
  };
}
