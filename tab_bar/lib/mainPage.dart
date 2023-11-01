import 'package:flutter/material.dart';
import 'package:tab_bar/birthdays.dart';
import 'package:tab_bar/gratitude.dart';
import 'package:tab_bar/reminders.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      _tabChanged;
    });
  }

  @override
  void dispose() {
    super.dispose();
    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }

    _tabController.dispose();
  }

  void _tabChanged() {
    if (_tabController.indexIsChanging) {
      print("tabChanged : ${_tabController.index}");
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("TabBar and TabBarView",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),),
          centerTitle: true,
        ),
      backgroundColor: Colors.black,
      body: SafeArea(child: 
      TabBarView(children: [
        Birthdays(),
        Reminders(),
        Gratitude(),
      ]),
      
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.cake,
              color: Colors. brown,
              ),
              text: "Birthdays",
            ),
            Tab(
              icon: Icon(Icons.alarm,
              color: Colors.white,
              ),
              text: "Remainders",
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied,
              color: Colors.white,
              ),
              text: "Gratitude",
            ),

          ]
        )
      ) ,
    );
  }
}
