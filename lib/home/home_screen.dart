import 'package:flutter/material.dart';
import 'package:islami_app/hadith/hadith_screen.dart';
import 'package:islami_app/quran/quran_screen.dart';
import 'package:islami_app/radio/radio_screen.dart';
import 'package:islami_app/sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    HadithScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Color(0xffE2BE7F),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/quran_icon.png",
            ),
            activeIcon: Image.asset(
              "assets/icons/quran_icon.png",
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/radio_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/radio_icon.png",
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/sebha_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/sebha_icon.png",
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/hadith_icon.png"),
            activeIcon: Image.asset(
              "assets/icons/hadith_icon.png",
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
