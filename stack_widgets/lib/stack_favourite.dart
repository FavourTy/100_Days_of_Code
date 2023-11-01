import 'package:flutter/material.dart';

class StackFavourite extends StatelessWidget {
  const StackFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       /* Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),*/
         Image(image: AssetImage("assets/image3.jpg"),
        fit: BoxFit.cover,
        ),
        Positioned(
            top: 0.0,
            right: 0.0,
            child: FractionalTranslation(
              translation: Offset(0.3, -0.3),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.star,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            )),
        Positioned(
            right: 10.0,
            bottom: 10.0,
            child: CircleAvatar(
              radius: 48.0,
             // backgroundColor: Colors.red,
               backgroundImage: AssetImage("assets/image4.png"),
            )),
        Positioned(
            left: 16.0,
            bottom: 16.0,
            child: Text(
              "Favour",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    );
  }
}
