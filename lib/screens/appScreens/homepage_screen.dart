// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tentwentyapp/screens/appScreens/dashboard_screen.dart';
import 'package:tentwentyapp/screens/appScreens/watch_screen.dart';
import '../../Colors/colors.dart';
import 'mediaLibrary_screen.dart';
import 'more_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  int _selectedTabIndex = 1;

  final List _pages = [
    DashboardScreen(),
    WatchScreen(),
    MediaLibraryScreen(),
    MoreScreen(),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return Container(
      height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: const [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            onTap: _changeIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: kPrimaryColor,
            selectedItemColor: kSelectedBottomBarIconColor,
            unselectedItemColor: kUnSelectedBottomBarIconColor,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label:  'Dashboard',
                icon:  Icon(Icons.dashboard),

              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.play_circle),
                label:  'Watch',
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.library_add),
                label:  'Media Library',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label:  'More',),
            ],
          ),
        ));
  }
}
