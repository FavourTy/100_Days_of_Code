

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _methodChannel =
      const MethodChannel("platformchannel.companyname.com/deviceinfo");
  String _deviceinfo = "";

  Future<void> _getDeviceInfo() async {
    String deviceInfo;
    try {
      deviceInfo = await _methodChannel.invokeMethod("getDeviceInfo");
    } on PlatformException catch (e) {
      deviceInfo = "Failed to get device info: '${e.message}'.";
    }
    setState(() {
      _deviceinfo = deviceInfo;
    });
  }

  @override
  void initState() {
    super.initState();
    _getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListTile(
        title: Text(
          "Device Info",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(_deviceinfo,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold
        ),
        ),
        contentPadding: EdgeInsets.all(16.0),
      ),
    ));
  }
}
