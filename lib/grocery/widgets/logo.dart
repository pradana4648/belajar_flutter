import 'package:flutter/material.dart';

class BuildLogo extends StatelessWidget {
  const BuildLogo({required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.centerRight,
          image: AssetImage('assets/images/fruits.png'),
        ),
      ),
    );
  }
}
