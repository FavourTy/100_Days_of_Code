import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: GridView.count(crossAxisCount: 3,
      padding: EdgeInsets.all(8.0),
      children:[
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
        Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          child: Text("favour"),
        ),
      ]
      ),
    );
  }
}
