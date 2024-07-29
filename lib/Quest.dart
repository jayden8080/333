import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack test'),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 312,
                width: 144,
                color: Colors.grey,
              ),
              Positioned(
                left: 15,
                bottom: 60,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 45,
                  width: 45,
                  color: Colors.yellow,
                ),
              ),

              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 60,
                  width: 150,
                  color: Colors.brown,
                ),
              ),
              Positioned(
                left: 35,
                bottom: 200,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 25,
                  width: 70,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
