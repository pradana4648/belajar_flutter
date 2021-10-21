import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterAnimationScreen extends StatefulWidget {
  const CounterAnimationScreen({Key? key}) : super(key: key);

  @override
  _CounterAnimationScreenState createState() => _CounterAnimationScreenState();
}

class _CounterAnimationScreenState extends State<CounterAnimationScreen>
    with TickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0,
      upperBound: 0.1);
  late final Animation<double> animation =
      Tween<double>(begin: 0, end: 1).animate(animationController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                animationController.forward();
              },
              child: Transform.translate(
                offset: Offset(0, 1),
                child: Text('TEST'),
              )),
          IconButton(
            onPressed: () {
              if (animationController.status == AnimationStatus.completed) {
                animationController.reverse();
              } else {
                animationController.forward();
              }
            },
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_arrow,
              progress: animationController,
            ),
          ),
        ],
      ),
    );
  }
}
