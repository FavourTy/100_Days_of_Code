import 'package:flutter/material.dart';

void main() {
  runApp(DragAndDropApp());
}

class DragAndDropApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DragAndDropScreen(),
    );
  }
}

class DragAndDropScreen extends StatefulWidget {
  @override
  _DragAndDropScreenState createState() => _DragAndDropScreenState();
}

class _DragAndDropScreenState extends State<DragAndDropScreen> {
  final List<Color> cardColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  Color? targetColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: cardColors
                  .map((color) => Draggable<Color>(
                        data: color,
                        child: Card(color: color, width: 100, height: 100),
                        feedback: Card(color: color.withOpacity(0.7), width: 100, height: 100),
                        childWhenDragging: Container(),
                      ))
                  .toList(),
            ),
            SizedBox(height: 50),
            DragTarget<Color>(
              builder: (context, candidateData, rejectedData) {
                return Card(
                  color: targetColor ?? Colors.grey,
                  width: 150,
                  height: 150,
                );
              },
              onWillAccept: (data) => true,
              onAccept: (data) {
                setState(() {
                  targetColor = data;
                });
              },
              onLeave: (data) {
                setState(() {
                  targetColor = null;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const Card({required this.color, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        color: color,
      ),
    );
  }
}
