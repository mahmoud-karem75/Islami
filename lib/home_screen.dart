import 'package:flutter/material.dart';

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
        bottomNavigationBar:
            BottomNavigationBar(backgroundColor: Colors.brown, items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/radio.png'),
                  color: Colors.white),
              label: 'Radio',
              tooltip: 'Radio'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/3x/sebha.png')),
              label: 'Sebha'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/3x/hadeth.png')),
              label: 'Hadith'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/3x/quran.png')),
              label: 'Quran'),
        ]),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}