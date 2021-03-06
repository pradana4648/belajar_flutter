import 'package:belajar_flutter/animations/animations_screen.dart';
import 'package:belajar_flutter/convert_image/convert_image.dart';
import 'package:belajar_flutter/custom_clipper_tutorial/clipper_tutorial.dart';
import 'package:flutter/material.dart';
import '../grocery//screens/home_screen.dart';

class Routes {
  static const grocery = '/grocery';
  static const animations = '/animations';
  static const clipper = '/clipper';
  static const image = '/convert-image';

  static Route onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == grocery) {
      return MaterialPageRoute(builder: (context) => HomeScreen());
    } else if (routeSettings.name == animations) {
      return MaterialPageRoute(builder: (context) => AnimationScreen());
    } else if (routeSettings.name == clipper) {
      return MaterialPageRoute(builder: (context) => ClipperTutorial());
    } else if (routeSettings.name == image) {
      return MaterialPageRoute(builder: (context) => ConvertImage());
    } else {
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Pilih Menu'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, grocery);
                    },
                    child: const Text('Grocery'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, animations);
                    },
                    child: const Text('Animations'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, clipper);
                    },
                    child: const Text('Clipper'),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    // () {
                    //   Navigator.pushNamed(context, image);
                    // },
                    child: const Text('Convert Image'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
