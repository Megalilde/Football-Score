import 'package:flutter/material.dart';


class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  static const String id = "shop";
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Shop 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Shop 2')),
        ),
      ],
    );
  }
}