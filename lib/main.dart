import 'package:flutter/material.dart';

import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(elevation: 0),
        canvasColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
