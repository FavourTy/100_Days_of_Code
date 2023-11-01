import 'package:flutter/material.dart';
class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Gratitude",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        ),
        
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(Icons.sentiment_satisfied,
        size: 200.0,
        color: Colors.white,
        ),
      ),
    );
  }
}