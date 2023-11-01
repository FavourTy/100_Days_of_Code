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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable(
              child: Icon(
                Icons.palette,
                color: Colors.pink,
                size: 48.0,
              ),
              childWhenDragging: Icon(
                Icons.palette,
                color: Colors.grey,
                size: 48.0,
              ),
              feedback: Icon(
                Icons.brush,
                color: Colors.pink,
                size: 80.0,
              ),
              data: Colors.purple,
            ),
            SizedBox(
              height: 30.0,
            ),
            DragTarget(
                builder: (BuildContext context, List<dynamic> acceptedData,
                        List<dynamic> rejectedData) =>
                    acceptedData.isEmpty
                        ? Text(
                            "Drag to see color change",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        : Text(
                            "painting color: $acceptedData",
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
          ],
        ),
      ),
    );
  }
}
