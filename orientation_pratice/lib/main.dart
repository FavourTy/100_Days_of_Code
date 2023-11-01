import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class Orientation extends StatelessWidget {
  const Orientation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
      title: Text(
        "ORIENTATION",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
     ),
      body: SafeArea(child: 
      Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Orientation()
        ],
      ),
      ),
      ),
    );
  }
}
