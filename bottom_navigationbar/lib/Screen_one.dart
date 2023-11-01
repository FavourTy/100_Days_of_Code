import 'package:flutter/material.dart';
import 'package:bottom_navigationbar/birthdays.dart';
import 'package:bottom_navigationbar/gratitude.dart';
import 'package:bottom_navigationbar/reminders.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _currentIndex = 0;
  List _listPages = [Birthdays(), Gratitude(), Reminders()];

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _listPages[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(        
            label: "Birthdays",
            icon: Icon(Icons.cake),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: "Gratitude",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "Remininders")
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
        currentIndex: _currentIndex,
      ),
    );
  }
}
