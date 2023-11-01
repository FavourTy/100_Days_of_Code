import 'package:flutter/material.dart';
import 'package:grid_view_app/grid_icons.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcon().getIconList();
    return GridView.builder(
      itemCount: 20,
      padding: EdgeInsets.all(8.0),
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.red,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _iconList[index],
                  size: 48.0,
                  color: Colors.black,
                ),
                Divider(),
                Text(
                  "index $index ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print("Row $index");
            },
          ),
        );
      },
    );
  }
}
