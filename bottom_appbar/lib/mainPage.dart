import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(),
          bottomNavigationBar: BottomAppBar(
            color: Colors.pink,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.black),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.newspaper),
                  color: Colors.black,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notification_add)),
                Divider(),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.pink,
            child: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
          )),
    );
  }
}
