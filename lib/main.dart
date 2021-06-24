import 'package:flutter/material.dart';

import 'package:belajar_flutter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        appBarTheme: AppBarTheme(elevation: 0),
        canvasColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
