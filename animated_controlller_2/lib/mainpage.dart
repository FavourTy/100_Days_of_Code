import 'dart:math';

import 'package:flutter/material.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({super.key});

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
with SingleTickerProviderStateMixin
 {

 late final _animationController = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 500),
  );

@override
void initState() {
  super.initState();
  _animationController.repeat();
}
  @override
  void dispose() {
    // 4. dispose the AnimationController when no longer needed
    _animationController.dispose();
    super.dispose();
  }
 
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      // 1. use an AnimatedBuilder
      child: AnimatedBuilder(
        // 2. pass our AnimationController as the animation argument
        animation: _animationController,
        // 3. pass the child widget that we will animate
        child: Container(width: 200, height: 200, color: Colors.pink),
        // 4. add a builder argument (this will be called when the animation value changes)
        builder: (context, child) {
          // 5. use a Transform widget to apply a rotation
          return Transform.rotate(
            // 6. the angle is a function of the AnimationController's value
            angle: 0.5 * pi * _animationController.value,
            child: child,
          );
        },
      ),
    ),
  );
  }
}