import 'package:belajar_flutter/data/product.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({@required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
