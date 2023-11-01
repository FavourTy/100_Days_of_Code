import 'package:flutter/material.dart';

class Birthdays extends StatelessWidget {
  const Birthdays({super.key});

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
          child: Icon(Icons.cake,
          size: 180.0,
          color: Colors.brown,),
        ),
      ),
    );
  }
}