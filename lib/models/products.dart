import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.description,
    this.isFavorite=false,
    @required this.imageUrl,
    @required this.price,
    @required this.title
  });
}