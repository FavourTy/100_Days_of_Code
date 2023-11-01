import 'package:flutter/material.dart';
import '../ListTile/list_tile.dart';

class LeftDrawerWidget extends StatefulWidget {
  const LeftDrawerWidget({super.key, required child});

  @override
  State<LeftDrawerWidget> createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(Icons.face,
            size: 48.0,
            color: Colors.white,
            ),
            accountName: Text("Favour Adeyemi") , 
          accountEmail: Text("favouradetayo03@gmail.com"),
          otherAccountsPictures: [
            Icon(Icons.bookmark_border,
            color: Colors.white,
            )
          ],
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/photo.jpg"),
            fit: BoxFit.cover,
            )
          ),
          ),
          const ListPage(),
        ],
      )
    );
  }
}
