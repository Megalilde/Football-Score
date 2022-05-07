import 'package:football_score/screens/matches.dart';
import 'package:football_score/screens/shop.dart';
import 'package:football_score/utils/constants.dart';
import 'package:flutter/material.dart';


class FootballHome extends StatefulWidget {
  const FootballHome({Key? key}) : super(key: key);



  @override
  State<FootballHome> createState() => _FootballHomeState();
}

class _FootballHomeState extends State<FootballHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('News 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('News 2')),
        ),
      ],
    );
  }
}