import 'package:flutter/material.dart';
import 'package:grid_view_app/grid_viewClass.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: GridViewWidget()),
    );
  }
}