import 'package:app_nodemcu/stack.dart';
import 'package:app_nodemcu/stack_favourite.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView.builder(itemCount: 7,
            itemBuilder: (BuildContext, int index) {
            if (index.isEven) {
              return const StackWidget();
            } else {
              return const StackFavourite();
            }
          }),
        ));
  }
}
