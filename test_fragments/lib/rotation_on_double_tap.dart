import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class RotationOnDoubelTapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RotationOnDoubleTap(),
    );
  }
}

class RotationOnDoubleTap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RotationOnDoubleTap();
  }
}

class _RotationOnDoubleTap extends State<RotationOnDoubleTap>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        child: RotationTransition(
            turns: curve,
            child: FlutterLogo(
              size: 200.0,
            )),
        onDoubleTap: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
      ),
    ));
  }
}
