import 'package:flutter/material.dart';

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.orange,
      forceElevated: true,
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("Parallax Effect"),
        background: Image.asset(
          "assets/image1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
