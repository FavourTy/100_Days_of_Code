import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.flight,
                  color: Colors.pink,
                ),
                title: Text("Airplane 1"),
                subtitle: Text("Very Cool"),
                trailing: Text("7%"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.flight,
                  color: Colors.yellow,
                ),
                title: Text("Airplane 2"),
                subtitle: Text("Very Cool"),
                trailing: Text("14%"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.flight,
                  color: Colors.green,
                ),
                title: Text("Airplane 3"),
                subtitle: Text("Very Cool"),
                trailing: Text("21%"),
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Colors.orange,
                    ),
                    title: Text("Car 1"),
                    subtitle: Text("Very Cool"),
                    trailing: Icon(Icons.bookmark),
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_car, color: Colors.black),
                    title: Text("Car 2"),
                    subtitle: Text("Very Cool"),
                    trailing: Icon(Icons.bookmark),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Colors.blue,
                    ),
                    title: Text("Car 3"),
                    subtitle: Text("Very Cool"),
                    trailing: Icon(Icons.bookmark_border),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Colors.purple,
                    ),
                    title: Text("Car 4"),
                    subtitle: Text("Very Cool"),
                    trailing: Icon(Icons.bookmark),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Colors.blue,
                    ),
                    title: Text("Car 3"),
                    subtitle: Text("Very Cool"),
                    trailing: Icon(Icons.bookmark_border),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
