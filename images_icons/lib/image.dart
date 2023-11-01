import 'package:flutter/material.dart';

class ImagesIcons extends StatelessWidget {
  const ImagesIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(
                      "assets/images/box.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/info.png"),
                    fit: BoxFit.cover,
                  ),
                  Icon(
                    Icons.brush,
                    color: Colors.red,
                    size: 50.0,
                  ),
                ],
              ),
              Divider(),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    color: Colors.pink,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      )
                    ]),
              ),
              Divider(),
              Container(
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15.0,
                  ),
                  decoration: InputDecoration(
                      labelText: "Notes",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
              Divider(
                color: Colors.lightGreen,
                height: 50.0,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter your notes"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
