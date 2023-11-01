import 'package:flutter/material.dart';

class WidgetData extends StatelessWidget {
  const WidgetData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            size: 60,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Data",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Column 1"),
                  Text("Column 2"),
                  Text("Column 3")
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Row 1"),
                Text("Row 2"),
                Text("Row 3"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
