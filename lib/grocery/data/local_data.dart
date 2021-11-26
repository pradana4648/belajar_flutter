import 'package:flutter/material.dart';

import 'product.dart';

class LocalData {
  static List<Product> get products => [
        Product(
            name: 'Banana',
            imageUrl: 'assets/images/banana.png',
            colors: Colors.yellow,
            price: 12.00,
            description:
                ' Banana is an elongated usually tapering tropical fruit with soft pulpy flesh enclosed in a soft usually yellow rind a bunch of bananas slipped on a banana peel.'),
        Product(
            name: 'Grape',
            imageUrl: 'assets/images/grape.png',
            colors: Colors.deepPurple,
            price: 10.10,
            description:
                'A berry, typically green (classified as white), purple, red, or black, growing in clusters on a grapevine, eaten as fruit, and used in making wine.'),
        Product(
            name: 'Cherry',
            imageUrl: 'assets/images/cherry.png',
            colors: Colors.red[900],
            price: 5.41,
            description:
                'A cherry is a fruit that grows on a tree or a bush. It belongs to the genus Prunus. It is red in color, with a seed in the middle. '),
        Product(
            name: 'Lemon',
            imageUrl: 'assets/images/lemon.png',
            colors: Colors.yellowAccent,
            price: 3.78,
            description:
                'Lemon is yellow, oval-shaped citrus fruit grows on flowering evergreen trees and is cultivated commercially and in backyard gardens around the world.'),
        Product(
            name: 'Orange',
            imageUrl: 'assets/images/orange.png',
            colors: Colors.orange,
            price: 4.55,
            description:
                'Orange fruit is a leathery-leaved evergreen fruit that bears the orange, native to warm regions of South and Southeast Asia. Oranges are a major commercial crop in many warm regions of the world.'),
        Product(
            name: 'Apple',
            imageUrl: 'assets/images/apple.png',
            colors: Colors.red[700],
            price: 8.55,
            description:
                ' the round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh. Many varieties have been developed as dessert or cooking fruit or for making cider.'),
      ];
}
