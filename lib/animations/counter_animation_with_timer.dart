import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterAnimationWithTimerScreen extends StatefulWidget {
  const CounterAnimationWithTimerScreen({Key? key}) : super(key: key);

  @override
  _CounterAnimationWithTimerScreenState createState() =>
      _CounterAnimationWithTimerScreenState();
}

class _CounterAnimationWithTimerScreenState
    extends State<CounterAnimationWithTimerScreen>
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

  final streamController = StreamController<int>();

  final intTicked = Stream<int>.periodic(Duration(seconds: 1), (tick) {
    return tick;
  }).take(10);
  late StreamSubscription<int> streamSubscription;

  @override
  void initState() {
    streamSubscription =
        intTicked.listen((event) => streamController.sink.add(event))..pause();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    streamSubscription.cancel();
    streamController.close();
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
                child: StreamBuilder<int>(
                    stream: streamController.stream,
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data.toString(),
                        style: Theme.of(context).textTheme.headline5,
                      );
                    }),
              ),
            ),
            TextButton(
              onPressed: () {
                animationController.forward().then((_) {
                  streamSubscription.resume();
                }).whenComplete(() {
                  animationController.reverse();
                });
              },
              child: Text('Play'),
            ),
            TextButton(
              onPressed: () {
                animationController.forward().then((_) {
                  streamSubscription.pause();
                }).whenComplete(() {
                  animationController.reverse();
                });
              },
              child: Text('Pause'),
            ),
            TextButton(
              onPressed: () {
                animationController.forward().then((_) {
                  streamSubscription.cancel();
                }).whenComplete(() {
                  animationController.reverse();
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
