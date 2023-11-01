import 'package:flutter/material.dart';
import '../ListTile/list_tile.dart';
class RightDrawer extends StatefulWidget {
  const RightDrawer({super.key});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Icon(Icons.face,
            size: 128.0,
            color: Colors.white54,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            ),
          const ListPage()
        ],
      ),
    );
  }
}