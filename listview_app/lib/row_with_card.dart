import 'package:flutter/material.dart';

class RowWithCardWidget extends StatelessWidget {
  const RowWithCardWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.flight,
          size: 48.0,
          color: Colors.purple,
        ),
        title: Text("Airplane $index"),
        subtitle: Text("Very cool"),
        trailing: Text(
          "${index * 7}%",
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        onTap: () {
          print("Tapped on Row $index");
        },
      ),
    );
  }
}
