import 'package:calculator_app/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double firstNum = 0.0;
  double secondNum = 0.0;
  String history = " ";
  String textToolDisplay = " ";
  String result = " ";
  String operation = " ";

  void buttonClick(String buttonValue) {
    print(buttonValue);
    if (buttonValue == "C") {
      textToolDisplay = " ";
      firstNum = 0;
      secondNum = 0;
      result = " ";
    } else if (buttonValue == "DEL") {
      textToolDisplay = " ";
      firstNum = 0;
      secondNum = 0;
      result = " ";
    } else if (buttonValue == "+" ||
        buttonValue == "-" ||
        buttonValue == "x" ||
        buttonValue == "/") {
      if (textToolDisplay.isNotEmpty) {
        firstNum = double.parse(textToolDisplay);
        result = " ";
        operation = buttonValue;
      }
    } else if (buttonValue == "=") {
      if (textToolDisplay.isNotEmpty) {
        secondNum = double.parse(textToolDisplay);
      }
    }
    if (buttonValue == "+") {
      result = (firstNum + secondNum).toString();
      history =
          firstNum.toString() + operation.toString() + operation.toString();
    }
    if (buttonValue == "-") {
      result = (firstNum - secondNum).toString();
      history =
          firstNum.toString() + operation.toString() + operation.toString();
    }
    if (buttonValue == "*") {
      result = (firstNum * secondNum).toString();
      history =
          firstNum.toString() + operation.toString() + operation.toString();
    }
    if (buttonValue == "/") {
      result = (firstNum / secondNum).toString();
      history =
          firstNum.toString() + operation.toString() + operation.toString();
    } else {
      result = (textToolDisplay += buttonValue).toString();
    }
    setState(() {});
    void clearDisplay() {
      setState(() {
        textToolDisplay = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CALCULATOR",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Text(
                    history,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    textToolDisplay,
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        text: "C",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                    CalculatorButton(
                      text: "+/-",
                      callback: buttonClick,
                      fillColour: 0xFFFFFFFF,
                    ),
                    CalculatorButton(
                        text: "%",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                    CalculatorButton(
                        text: "DEL",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        text: "7",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "8",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "9",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "/",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        text: "4",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "5",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "6",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "*",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        text: "1",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "2",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "3",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "-",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        text: "0",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: ".",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: ".",
                        callback: buttonClick,
                        fillColour: (0xFF9C27B0)),
                    CalculatorButton(
                        text: "=",
                        callback: buttonClick,
                        fillColour: (0xFFFFFFFF)),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
