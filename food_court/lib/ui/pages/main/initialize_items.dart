
import 'package:flutter/material.dart';
import 'package:food_court/ui/pages/favor/favor.dart';
import 'package:food_court/ui/pages/home/home.dart';

final List<Widget> pages = [
  CQHomeScreen(),
  CQFavorScreen()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
    title: Text("收藏"),
    icon: Icon(Icons.star)
  )
];


