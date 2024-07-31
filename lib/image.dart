import 'package:flutter/material.dart';
class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network("https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?w=191&h=186&c=7&r=0&o=5&pid=1.7"),
        ),
    );
  }
}
