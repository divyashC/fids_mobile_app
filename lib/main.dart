import 'package:flutter/material.dart';
import 'package:fids_mobile_app/home_page.dart';
import 'package:fids_mobile_app/search_page.dart';
import 'package:fids_mobile_app/info_page.dart';
import 'package:fids_mobile_app/reminder_page.dart';
import 'package:fids_mobile_app/routes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLIGHT SCHEDULE',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
    const SearchPage(),
    const RoutesPage(),
    const ReminderPage(),
    const InfoPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 12),
              child: Icon(Icons.flight),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 12),
              child: Icon(Icons.search),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 12),
              child: Icon(Icons.location_on),
            ),
            label: 'Routes',
          ),
          BottomNavigationBarItem(
            // reminders bell icon
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 12),
              child: Icon(Icons.notifications),
            ),
            label: 'Reminders',
          ),
          BottomNavigationBarItem(
            // add padding to the icon
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5, top: 12),
              child: Icon(Icons.info),
            ),
            label: 'Info',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFFEC441E),
        showUnselectedLabels: true,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
