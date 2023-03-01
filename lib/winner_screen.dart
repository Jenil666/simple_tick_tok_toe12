import 'package:flutter/material.dart';

class Winner extends StatefulWidget {
  const Winner({Key? key}) : super(key: key);

  @override
  State<Winner> createState() => _WinnerState();
}

class _WinnerState extends State<Winner> {
  @override
  Widget build(BuildContext context) {
    String l1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$l1",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "Winneer",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    ));
  }
}
