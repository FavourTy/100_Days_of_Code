import 'package:flutter/material.dart';

class DragAndDropScreen extends StatefulWidget {
  @override
  _DragAndDropScreenState createState() => _DragAndDropScreenState();
}

class _DragAndDropScreenState extends State<DragAndDropScreen> {
  Color boxColor = Colors.blue;
  bool isBoxDropped = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isBoxDropped
                ? SizedBox(
                    width: 100,
                    height: 100,
                    child: ColoredBox(
                      color: boxColor,
                    ),
                  )
                : Draggable<Color>(
                    data: Colors.blue, // Data to be passed when dragging.
                    child: Container(
                      width: 100,
                      height: 100,
                      color: boxColor,
                    ),
                    feedback: Container(
                      width: 100,
                      height: 100,
                      color: boxColor.withOpacity(0.5),
                    ),
                    childWhenDragging: Container(),
                    // Widget when dragging.
                  ),
            SizedBox(height: 50),
            DragTarget<Color>(
              builder: (context, List<Color?> candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey,
                );
              },
              onWillAccept: (data) =>
                  true, // Called when an object is dragged over the target.
              onAccept: (data) {
                setState(() {
                  boxColor = data!;
                  isBoxDropped = true;
                });
              },
              onLeave: (data) {
                setState(() {
                  isBoxDropped = false;
                });
              },
              // Called when an object is dropped on the target.
            ),
          ],
        ),
      ),
    );
  }
}
