import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Icon(Icons.sentiment_satisfied,
          size: 150.0,
          color: Colors.pink,
          ),
        ),
      ),
    );
  }
}