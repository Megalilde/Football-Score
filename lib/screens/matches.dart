import 'package:flutter/material.dart';
import 'package:football_score/screens/shop.dart';

import '../utils/constants.dart';
import 'home.dart';


class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  static const String id = "matches";
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Center(
            child: Container(
              height: 100,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Colors.green.shade700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title:Center(
                        child: Text(
                          "Serie A",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
        Center(
            child: Container(
              height: 100,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Colors.green.shade700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title:Center(
                        child: Text(
                          "Serie B",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ],
    );
  }
}
