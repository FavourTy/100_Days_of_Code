import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child: Icon(Icons.access_alarm,
          size: 150.0,
          color: Colors.pink,
          ),
        ),
      ),
    );
  }
}