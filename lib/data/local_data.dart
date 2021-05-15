import 'package:belajar_flutter/data/product.dart';
import 'package:flutter/material.dart';

class LocalData {
  static List<Product> get productImages => [
        Product(
          name: 'Banana',
          imageUrl: 'assets/images/banana.png',
          colors: Colors.yellow,
          price: 12.00,
        ),
        Product(
          name: 'Grape',
          imageUrl: 'assets/images/grape.png',
          colors: Colors.deepPurple,
          price: 10.10,
        ),
        Product(
          name: 'Cherry',
          imageUrl: 'assets/images/cherry.png',
          colors: Colors.red[900],
          price: 5.41,
        ),
        Product(
          name: 'Lemon',
          imageUrl: 'assets/images/lemon.png',
          colors: Colors.yellowAccent,
          price: 3.78,
        ),
        Product(
          name: 'Orange',
          imageUrl: 'assets/images/orange.png',
          colors: Colors.orange,
          price: 4.55,
        ),
        Product(
          name: 'Apple',
          imageUrl: 'assets/images/apple.png',
          colors: Colors.red[700],
          price: 8.55,
        ),
      ];

  // static List<String> get categories =>
  //     <String>["Produce", 'Bakeries', 'Seafood', 'Diary', 'Vegetables'];
}
