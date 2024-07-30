import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.lightBlue,
                  )
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                  )
              ),
            ],
          ),
        )
    );
  }
}
