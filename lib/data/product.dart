import 'package:flutter/painting.dart';

class Product {
  final String? name;
  final String? imageUrl;
  final Color? colors;
  final double? price;
  final String? description;

  const Product(
      {this.name, this.imageUrl, this.colors, this.price, this.description});
}
