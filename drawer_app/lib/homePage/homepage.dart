import 'package:drawer_app/drawers/Right_drawer.dart';
import 'package:drawer_app/drawers/left_drawer.dart';
import 'package:flutter/material.dart';
import '../Screens/Birthday.dart';
import '../Screens/Gratitude.dart';
import '../Screens/Reminders.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(
          "My Drawer",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      drawer: LeftDrawerWidget(child: ListView()),
      endDrawer: const RightDrawer(),
      body: SafeArea(child: Container()),
    );
  }
}
