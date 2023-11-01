import 'package:flutter/material.dart';

class MyCrossFade extends StatefulWidget {
  const MyCrossFade({super.key});

  @override
  State<MyCrossFade> createState() => _MyCrossFadeState();
}

class _MyCrossFadeState extends State<MyCrossFade> {
  bool _CrossFadeStateShowFirst = true;
  void _crossFade() {
    setState(() {
      _CrossFadeStateShowFirst = _CrossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCrossFade(
                  firstChild: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.orange,
                  ),
                  secondChild: Container(
                    height: 200,
                    width: 200,
                    color: Colors.lime,
                  ),
                  crossFadeState: _CrossFadeStateShowFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 500),
                  sizeCurve: Curves.bounceOut,
                ),
                Positioned.fill(
                    child: TextButton(
                        onPressed: () {
                          _crossFade();
                        },
                        child: Text("Tap to\nFade Color and Size")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
