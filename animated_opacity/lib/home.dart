import 'package:animated_opacity/screen_zero.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 420.0,
              ),
              Text(
                "WELCOME TO MY PAGE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                ),
              ),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ScreenZero())));
                  },
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
