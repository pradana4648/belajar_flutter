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
  );
  late final Animation<double> animation = Tween<double>(begin: 1.0, end: 0.0)
      .animate(CurvedAnimation(
          parent: animationController, curve: Curves.bounceInOut));

  late final animationGeometry = Tween<AlignmentGeometry>(
          begin: AlignmentDirectional.center,
          end: AlignmentDirectional.bottomCenter)
      .animate(
          CurvedAnimation(parent: animationController, curve: Curves.bounceIn));

  int counter = 0;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(20),
              child: FadeTransition(
                opacity: animation,
                child: Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                animationController.forward().then((_) {
                  setState(() {
                    counter++;
                  });
                }).whenComplete(() {
                  animationController.reverse();
                });

                if (animationController.status == AnimationStatus.completed) {}
              },
              child: Text('Incremented'),
            ),
            TextButton(
              onPressed: () {
                animationController.forward().then((_) {
                  setState(() {
                    counter--;
                  });
                }).whenComplete(() {
                  animationController.reverse();
                });
              },
              child: Text('Decremented'),
            ),
          ],
        ),
      ),
    );
  }
}
