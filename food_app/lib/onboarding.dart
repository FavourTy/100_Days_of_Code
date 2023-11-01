import 'package:flutter/material.dart';
import 'package:food_app/screen_zero.dart';

class Unboarding extends StatelessWidget {
  const Unboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      bottom: true,
      top: true,
      right: true,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "WELCOME",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyFood()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                    )),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
