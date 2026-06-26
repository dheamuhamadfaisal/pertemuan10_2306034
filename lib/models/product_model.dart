import 'dart:convert';

class ProductModel {
  final String name;
  final String description;
  final int price;
  final String image;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  factory ProductModel.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProductModel(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
      image: map['image'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());
  factory ProductModel.fromJson(String source) {
    return ProductModel.fromMap(
      jsonDecode(source),
    );
  }
}