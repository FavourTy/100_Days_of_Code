import 'package:flutter/material.dart';
import 'package:hero_animation/flyy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HERO ANIMATION"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: GestureDetector(
          child: Hero(
              tag: "format_paint",
              child: Icon(
                Icons.format_paint,
                color: Colors.black,
                size: 120.0,
              )),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageTwo()));
          },
        ),
      )),
    );
  }
}
