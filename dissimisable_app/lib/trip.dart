import 'package:dissimisable_app/classes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _trips = [];
  @override
  void initState() {
    super.initState();
    _trips
      ..add(Trip(id: "0", tripName: "Tokyo", tripLocation: "Japan"))
      ..add(Trip(id: "1", tripName: "Rome", tripLocation: "Italy"))
      ..add(Trip(id: "2", tripName: "Paris", tripLocation: "France"))
      ..add(Trip(id: "3", tripName: "London", tripLocation: "England"))
      ..add(Trip(id: "4", tripName: "Sydney", tripLocation: "Australia"))
      ..add(Trip(id: "5", tripName: "Miami", tripLocation: "USA-Florida"))
      ..add(Trip(id: "6", tripName: "Nigeria", tripLocation: "Lagos"))
      ..add(Trip(id: "7", tripName: "Cusco", tripLocation: "Peru"))
      ..add(Trip(id: "8", tripName: "New Delhi", tripLocation: "India"))
      ..add(Trip(id: "9", tripName: "Rio de Janeiro", tripLocation: "Brazil"))
      ..add(Trip(id: "10", tripName: "Cancun", tripLocation: "Mexico"));
  }

  void _markTripCompleted() {}
  void _deleteTrip() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: (_trips.length),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                  key: UniqueKey(),
                  child: ListTile(
                    title: Text('${_trips[index].tripName}'),
                    subtitle: Text(_trips[index].tripLocation),
                    leading: Icon(Icons.flight),
                    trailing: Icon(Icons.fastfood),
                  ),
                  background: Container(
                    color: Colors.green,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  onDismissed: (DismissDirection direction) {
                    direction == DismissDirection.startToEnd
                        ? _markTripCompleted()
                        : _deleteTrip();
                    setState(() {
                      _trips.removeAt(index);
                    });
                  });
            }),
      ),
    );
  }
}
