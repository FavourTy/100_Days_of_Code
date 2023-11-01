import 'package:flutter/material.dart';
import 'package:food_app/screen_zero.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Skenner",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              "Naskenj QR kod v application zakaznika",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Zvol typ QR kodu",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                  child: const Column(
                    children: [
                      Image(image: AssetImage("images/Group2462.png")),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Kupon",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    color: Colors.yellow,
                  ),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                  child: const Column(
                    children: [
                      Image(image: AssetImage("images/Group2461.png")),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "5+1 Zdrama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "pocket ps",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2)),
              child: const Text(
                '2',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(19, 10, 19, 19),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'naskenovet kod',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow,
              ),
              padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyFood()));
                  },
                  child: const Text(
                    "Prev",
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  )),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
