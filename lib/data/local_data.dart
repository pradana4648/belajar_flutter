import 'package:belajar_flutter/data/product.dart';
import 'package:flutter/material.dart';

class LocalData {
  static List<Product> get products => [
        Product(
            name: 'Banana',
            imageUrl: 'assets/images/banana.png',
            colors: Colors.yellow,
            price: 12.00,
            description:
                'Sit mollit sint elit sit proident eiusmod sit laboris esse ad adipisicing elit. Esse duis duis consequat laboris consequat ex sint. Ea ullamco labore veniam mollit amet. Velit cupidatat aute exercitation ad adipisicing occaecat.'),
        Product(
            name: 'Grape',
            imageUrl: 'assets/images/grape.png',
            colors: Colors.deepPurple,
            price: 10.10,
            description:
                'Non ipsum laboris duis et est nisi anim laborum reprehenderit. Laborum fugiat deserunt veniam in aliqua dolore ipsum non sint cupidatat minim. Lorem officia cillum duis Lorem cillum.'),
        Product(
            name: 'Cherry',
            imageUrl: 'assets/images/cherry.png',
            colors: Colors.red[900],
            price: 5.41,
            description:
                'Commodo ad ut incididunt non duis nostrud non et aute id reprehenderit in. Adipisicing et culpa tempor cillum dolore eu reprehenderit quis velit enim in commodo ullamco. Excepteur cillum est non magna.'),
        Product(
            name: 'Lemon',
            imageUrl: 'assets/images/lemon.png',
            colors: Colors.yellowAccent,
            price: 3.78,
            description:
                'Laboris sit elit mollit mollit laborum anim. Sit nulla elit excepteur dolor dolore excepteur. Sint voluptate aute anim proident mollit eiusmod amet labore minim reprehenderit ipsum. Qui dolor officia Lorem reprehenderit. Qui magna nulla enim dolore et fugiat.'),
        Product(
            name: 'Orange',
            imageUrl: 'assets/images/orange.png',
            colors: Colors.orange,
            price: 4.55,
            description:
                'Officia veniam eu consectetur sint Lorem nisi. Adipisicing irure occaecat non excepteur. Ea tempor mollit nostrud eu mollit enim nisi et nulla. Ut ad eiusmod culpa ex nulla consequat sunt esse incididunt cillum quis minim.'),
        Product(
            name: 'Apple',
            imageUrl: 'assets/images/apple.png',
            colors: Colors.red[700],
            price: 8.55,
            description:
                'Eu consequat sint sint irure. Sint reprehenderit adipisicing mollit et duis proident ea nisi occaecat ad. Proident velit mollit id voluptate adipisicing aliqua ex cupidatat. Et eu aute dolore irure aliqua exercitation enim pariatur in. Voluptate dolore nisi proident ex sint aute.'),
      ];
}
