// ignore: file_names
import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'row.dart';
import 'row_with_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("ListView"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 21,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return HeaderWidget(index: index);
                } else if (index >= 1 && index < 4) {
                  return RowWithCardWidget(index: index);
                } else {
                  return RowWidget(index: index);
                }
              })),
    );
  }
}
