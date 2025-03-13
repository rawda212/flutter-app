
import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  final List<Product> products;
  final int total;
  final int skip;
  final int limit;

  ProductsModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"]?.toDouble(),
    category: json["category"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "category": category,
    "thumbnail": thumbnail,
  };
}
