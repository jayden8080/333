import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.pinkAccent,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,

        ),
      ],
    );
  }
}
