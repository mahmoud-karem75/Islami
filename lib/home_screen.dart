import 'package:flutter/material.dart';

import 'bottom_navigation_item.dart';

class MyHomeScreen extends StatelessWidget {
  static const String route = 'home';

  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bg3.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Center(
              child: Text('اسلامي',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.black)),
            )),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 35,
            unselectedItemColor: Colors.white,
            fixedColor: Colors.black,
            backgroundColor: Colors.brown,
            type: BottomNavigationBarType.fixed,
            items: [
              MyBottomNavigationItem(path: 'assets/radio.png', tip: 'Radio'),
              MyBottomNavigationItem(path: 'assets/sebha.png', tip: 'Sebha'),
              MyBottomNavigationItem(path: 'assets/hadith.png', tip: 'Hadith'),
              MyBottomNavigationItem(path: 'assets/quran.png', tip: 'Quran')
            ]),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
