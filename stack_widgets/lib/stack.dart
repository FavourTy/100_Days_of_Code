import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /* Container(
          height: 500,
          width: 500,
        
        ),*/
        Image(
          image: AssetImage(
            "assets/image3.jpg",
          ),
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: CircleAvatar(
            radius: 48.0,
            // backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/image1.jpg"),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: Text(
            "Pebbs",
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
