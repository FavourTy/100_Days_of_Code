import 'package:flutter/material.dart';
class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Reminders",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        ),
        
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Icon(Icons.alarm,
        size: 200.0,
        color: Colors.white,
        ),
      ),
    );
  }
}