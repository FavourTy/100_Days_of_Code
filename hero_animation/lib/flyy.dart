import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.shortestSide / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text('FLY',
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Hero(
          tag: 'format_paint',
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.format_paint,
              color: Colors.black,
              size: _width,
            ),
          ),
        ),
      ),
    );
  }
}
