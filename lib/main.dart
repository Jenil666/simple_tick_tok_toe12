import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_tick_tok_toe/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Code(),
      },
    ),
  );
}
