import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
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
