import 'package:flutter/material.dart';

class MyBottomNavigationItem extends BottomNavigationBarItem {
  String path = '', tip = '';

  MyBottomNavigationItem({required this.path, required this.tip})
      : super(icon: ImageIcon(AssetImage(path)), label: '', tooltip: tip);
}
