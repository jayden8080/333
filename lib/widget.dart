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
                height: 400,
                width: 350,
                color: const Color.fromARGB(255, 218, 255, 149),
                child: const Text(
                  'Widget 1',
                  style: TextStyle(fontSize: 33),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 300,
                  width: 250,
                  color: const Color.fromARGB(100, 175, 244, 197),
                  child: const Text(
                    'Widget 2',
                    style: TextStyle(fontSize: 33),
                  ),
                ),
              ),

              Positioned(
                left: 100,
                bottom: 100,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 200,
                  width: 150,
                  color: const Color.fromARGB(255, 175, 244, 197),
                  child: const Text(
                    'Widget 3',
                    style: TextStyle(fontSize: 33),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
