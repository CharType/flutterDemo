

import 'package:flutter/material.dart';

import 'initialize_items.dart';

class CQMainScreen extends StatefulWidget {
  static const String routeName = '/';
  @override
  _CQMainScreenState createState() => _CQMainScreenState();
}

class _CQMainScreenState extends State<CQMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}