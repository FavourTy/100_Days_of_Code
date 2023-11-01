import 'package:flutter/material.dart';

class Required extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Duration duration;
  const Required({
    required this.duration,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: 200,
          color: Colors.pink,
          width: 200,
          duration: Duration(milliseconds: 250),
        ),
      ),
    );
  }
}
