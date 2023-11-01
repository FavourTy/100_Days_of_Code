import 'package:customscrollview_with_silvers/silver_app_bar.dart';
import 'package:customscrollview_with_silvers/silver_grid.dart';
import 'package:customscrollview_with_silvers/silver_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("CustomScrollView - Silvers"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: CustomScrollView(
        slivers: [
          const SilverAppBarWidget(),
          const SilverListWidget(),
          const SilverGridWidget(),
        ],
      ),
    );
  }
}
