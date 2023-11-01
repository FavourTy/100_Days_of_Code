import 'package:flutter/material.dart';
import 'package:food_app/onboarding.dart';
import 'package:food_app/screen%20_one.dart';

class MyFood extends StatelessWidget {
  const MyFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage("images/info.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "Denne Menu",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "15-45",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage("images/gluttensign.png"))
                ],
              ),
              SizedBox(height: 25),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(5, 35, 5, 35),
                  child: Column(
                    children: [
                      Text(
                        "Pondelok",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2.5.2022  1.37",
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Image(image: AssetImage("images/food.png"))
                    ],
                  )),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sotrok",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5.5.2022",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Column(
                  children: [
                    Text(
                      "Vitrok",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "4.5.2022",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Column(
                  children: [
                    Text(
                      "Mitorok",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "3.5.2022",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Column(
                  children: [
                    Text(
                      "Utorok",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2.5.2022",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow,
                    ),
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Unboarding()));
                        },
                        child: Text(
                          "Prev",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow,
                    ),
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScreenOne()));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
