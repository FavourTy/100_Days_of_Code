import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function callback;

  final int fillColour;
  CalculatorButton({
    required this.text,
    required this.callback,
    required this.fillColour,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
            Color(fillColour),
          )),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          )),
    );
  }
}
