import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  const FormApp({super.key});

  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            "ORIENTATION",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Icon(
              Icons.school,
              size: 70.0,
            ),
            Divider(),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: 100.0,
              width: 100.0,
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Potrait",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Grid 0",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Grid 1",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Grid 0",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Grid 1",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Grid 0",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Grid 1",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Grid 0",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Grid 1",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: 100.0,
              width: 100.0,
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Potrait",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
