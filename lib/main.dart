import 'package:flutter/material.dart';
import 'package:football_score/utils/constants.dart';

void main() {
  runApp(const FootballHome());
}

class FootballHome extends StatelessWidget {
  const FootballHome({Key? key}) : super(key: key);

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
          body: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
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
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.red.shade800,
            backgroundColor: Color(appbarColor),
          ),
        ),
      ),
    );
  }
}
