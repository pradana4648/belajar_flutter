import 'package:belajar_flutter/animations/counter_animation.dart';
import 'package:belajar_flutter/animations/counter_animation_with_timer.dart';
import 'package:belajar_flutter/animations/custom_drag_screen.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => CustomDragScreen()));
              },
              child: Text('Draggable'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CounterAnimationScreen()));
              },
              child: Text('Counter Animation'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CounterAnimationWithTimerScreen()));
              },
              child: Text('Counter Animation with Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
