import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("TabBar and TabBarView",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Icon(Icons.alarm,
          size: 180.0,
          color: Colors.white,),
        ),
      ),
    );
  }
}