import 'package:flutter/material.dart';
import '../Screens/Birthday.dart';
import '../Screens/Gratitude.dart';
import '../Screens/Reminders.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.cake),
          title: Text("Birthdays"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Birthdays()));
          },
        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text("Gratitude"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Gratitude()));
          },
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Reminders"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Reminder()));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
              ),
      ],
    );
  }
}
