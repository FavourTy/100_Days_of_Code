import 'package:flutter/material.dart';

class ScreenZero extends StatefulWidget {
  const ScreenZero({super.key});

  @override
  State<ScreenZero> createState() => _ScreenZeroState();
}

class _ScreenZeroState extends State<ScreenZero> {
  double _opacity = 1.0;

  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(children: [
          AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              child: Container(
                color: Colors.pink,
                height: 200.0,
                width: 200.0,
                child: TextButton(
                  onPressed: () {
                    _animatedOpacity();
                  },
                  child: Text("Tap to Fade"),
                ),
              ))
        ]),
      ),
    ));
  }
}
