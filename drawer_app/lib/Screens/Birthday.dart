import 'package:flutter/material.dart';
class Birthdays extends StatelessWidget {
  const Birthdays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Birthdays",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        ),
        
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(Icons.cake,
        
        size: 200.0,
        color: Colors.brown,
        ),
      ),
    );
  }
}