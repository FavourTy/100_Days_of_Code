import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

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
          child: Icon(Icons.sentiment_satisfied,
          size: 180.0,
          color: Colors.pink,),
        ),
      ),
    );
  }
}