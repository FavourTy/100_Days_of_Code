import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Offset _startLastOffset = Offset.zero;
  Offset _lastOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  double _lastScale = 1.0;
  double _currentScale = 1.0;
  double currentScale = 1.0 * 2.0;

  void _onScaleStart(ScaleStartDetails details) {
    print('ScaleStartDetails: $details');
    _startLastOffset = details.focalPoint;
    _lastOffset = _currentOffset;
    _lastScale = _currentScale;
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    print('ScaleUpdateDetails: $details - Scale: ${details.scale}');
    if (details.scale != 1.0) {
      // Scaling
      double currentScale = _lastScale * details.scale;
      if (currentScale < 0.5) {
        currentScale = 0.5;
      }
      setState(() {
        _currentScale = currentScale;
      });
      print('_scale: $_currentScale - _lastScale: $_lastScale');
    } else if (details.scale == 1.0) {
      // We are not scaling but dragging around screen
      // Calculate offset depending on current Image scaling.
      Offset offsetAdjustedForScale =
          (_startLastOffset - _lastOffset) / _lastScale;
      Offset currentOffset =
          details.focalPoint - (offsetAdjustedForScale * _currentScale);
      setState(() {
        _currentOffset = currentOffset;
      });
      print(
          'offsetAdjustedForScale: $offsetAdjustedForScale - _currentOffset:$_currentOffset');
    }
  }

  void _onDoubleTap() {
    print('onDoubleTap');
    double currentScale = _lastScale * 2.0;
    if (currentScale > 16.0) {
      currentScale = 1.0;
      _resetToDefaultValues();
    }
    _lastScale = currentScale;
    setState(() {
      _currentScale = currentScale;
    });
  }

  void _onLongPress() {
    print('onLongPress');
    setState(() {
      _resetToDefaultValues();
    });
  }

  void _setScaleSmall() {
    setState(() {
      _currentScale = 0.5;
    });
  }

  void _setScaleBig() {
    setState(() {
      _currentScale = 16.0;
    });
  }

  void _resetToDefaultValues() {
    _startLastOffset = Offset.zero;
    _lastOffset = Offset.zero;
    _currentOffset = Offset.zero;
    _lastScale = 1.0;
    _currentScale = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GestureDetector(
        onScaleStart: _onScaleStart,
        onScaleUpdate: _onScaleUpdate,
        onDoubleTap: _onDoubleTap,
        onLongPress: _onLongPress,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Transform.scale(
              scale: _currentScale,
              child: Transform.translate(
                offset: _currentOffset,
                child: Image(
                  image: AssetImage("assets/tree1.jpg"),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.identity()
                ..scale(_currentScale, _currentScale)
                ..translate(_currentOffset.dx, _currentOffset.dy),
              alignment: FractionalOffset.center,
              child: Image(
                image: AssetImage("assets/tree1.jpg"),
              ),
            ),
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.white,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("scale: ${_currentScale.toStringAsFixed(4)}"),
                    Text("Current: $_currentOffset"),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 50.0,
                child: Container(
                  color: Colors.white,
                  height: 56.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          height: 48.0,
                          width: 128.0,
                          color: Colors.grey,
                          child: Icon(
                            Icons.touch_app,
                            color: Colors.black,
                            size: 32.0,
                          ),
                        ),
                        splashColor: Colors.pink,
                        highlightColor: Colors.purple,
                        onTap: _setScaleSmall,
                        onDoubleTap: _setScaleBig,
                        onLongPress: _onLongPress,
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      InkResponse(
                        child: Container(
                          height: 48.0,
                          width: 128.0,
                          color: Colors.grey,
                          child: Icon(
                            Icons.touch_app,
                            color: Colors.black,
                            size: 32.0,
                          ),
                        ),
                        splashColor: Colors.pink,
                        highlightColor: Colors.purple,
                        onTap: _setScaleSmall,
                        onDoubleTap: _setScaleBig,
                        onLongPress: _onLongPress,
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
