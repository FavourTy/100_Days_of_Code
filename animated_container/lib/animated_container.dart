import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({
    super.key,
  });

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double width = 200;
  double height = 200;
  Color color = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: height,
        width: width,
        color: color,
        curve: Curves.bounceInOut,
        child: TextButton(onPressed: _update, child: Text("Hello")),
      )),
    );
  }

  final random = Random();
  void _update() {
    setState(() {
      width = random.nextInt(300).toDouble();
      height = random.nextInt(300).toDouble();
      color = Color.fromRGBO(
          random.nextInt(128), random.nextInt(128), random.nextInt(128), 1);
    });
  }
}
