import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:flutter_emphance/utils/emphanceText.dart';
import 'timelineEmployee.dart';
import 'rewardsEmployee.dart';
import 'settingsEmployee.dart';

class ProfileEmployee extends StatefulWidget {
  @override
  _ProfileEmployeeState createState() => _ProfileEmployeeState();
}

class _ProfileEmployeeState extends State<ProfileEmployee> {

  int _selectedTab = 0;
  final _pageOptions = [
    TimelineEmployee(),
    RewardsEmployee(),
    SettingsEmployee(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Emphance(),
        ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              title: Text('Timeline'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Rewards'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }

}

