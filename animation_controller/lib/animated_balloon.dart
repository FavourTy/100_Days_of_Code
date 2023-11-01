import 'package:flutter/material.dart';

class AnimatedBalloonWidget extends StatefulWidget {
  const AnimatedBalloonWidget({super.key});

  @override
  State<AnimatedBalloonWidget> createState() => _AnimatedBalloonWidgetState();
}

class _AnimatedBalloonWidgetState extends State<AnimatedBalloonWidget>
    with TickerProviderStateMixin {
 late AnimationController _ControllerFloatUp;
  late AnimationController _ControllerGrowSize;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGrowSize;

  @override
  void initState() {
    super.initState();
    _ControllerFloatUp = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _ControllerGrowSize =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _ControllerFloatUp.dispose();
    _ControllerGrowSize.dispose();
  }

  Widget build(BuildContext context) {
    double _balloonHeight = MediaQuery.of(context).size.height / 2;
    double _balloonWidth = MediaQuery.of(context).size.height / 3;
    double _balloonBottomLocation =
        MediaQuery.of(context).size.height - _balloonHeight;

    _animationFloatUp = Tween(begin: _balloonBottomLocation, end: 0.0).animate(
        CurvedAnimation(
            parent: _ControllerFloatUp, curve: Curves.fastOutSlowIn));
    _animationGrowSize = Tween(begin: 50.0, end: _balloonWidth).animate(
        CurvedAnimation(
            parent: _ControllerGrowSize, curve: Curves.elasticInOut));
    _ControllerFloatUp.forward();
    _ControllerGrowSize.forward();

    return AnimatedBuilder(
      animation: _animationFloatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(top: _animationFloatUp.value),
          width: _animationGrowSize.value,
        );
      },
      child: GestureDetector(
        onTap: () {
          if (_ControllerFloatUp.isCompleted) {
            _ControllerFloatUp.reverse();
            _ControllerGrowSize.reverse();
          } else {
            _ControllerFloatUp.forward();
            _ControllerGrowSize.forward();
          }
        },
        child: Image.asset("assets/flutterballoon.jpg",
        height: _balloonHeight,
        width: _balloonWidth,
        ),
      ),
      
    );
  }
}
