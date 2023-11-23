import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

// Ürün modeli
class Product {
  final String name;
  final String description;
  final int price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(key, value) {
    return Product(
      name: value["name"],
      description: value["description"],
      price: value["price"],
      imageUrl: value["imageUrl"],
    );
  }
}
