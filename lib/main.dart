import 'package:flutter/material.dart';
import 'package:football_score/screens/home.dart';
import 'package:football_score/screens/matches.dart';
import 'package:football_score/screens/shop.dart';
import 'package:football_score/utils/constants.dart';

void main() {
  runApp(FootballScore());
}

class FootballScore extends StatefulWidget {

  static const String id = "homepage";

  @override
  State<FootballScore> createState() => _FootballScoreState();
}

class _FootballScoreState extends State<FootballScore> {
  int currentIndex=0;

  List pages = [
  FootballHome(),
  MatchesScreen(),
  ShopScreen(),
  ];

  void onTap(int index){
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(safeAreaColor),
          appBar: AppBar(
            backgroundColor: Color(appbarColor),
            title: Center(child: Text('Home')),
          ),
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 20.0,
            unselectedFontSize: 20.0,
            onTap: (value){
              setState(() {
                if (value == 0) currentIndex = value;
                if (value == 1) currentIndex = value;
                if (value == 2) currentIndex = value;
              });

            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.alternate_email),
                label: 'Partite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.web_outlined),
                label: 'Shop',
              ),
            ],
            backgroundColor: Color(appbarColor),
            selectedItemColor: Colors.red.shade900,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
