import 'package:flutter/material.dart';

import 'grocery/screens/home_screen.dart' as grocery;

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
      home: grocery.HomeScreen(),
    );
  }
}
