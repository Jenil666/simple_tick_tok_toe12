import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_tick_tok_toe/ai.dart';
import 'package:simple_tick_tok_toe/alm1.dart';
import 'package:simple_tick_tok_toe/homepage.dart';
import 'package:simple_tick_tok_toe/select.dart';
import 'package:simple_tick_tok_toe/winner_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'aim1',
      routes: {
        '/':(context) => Select(),
        'home':(context) => Code(),
        'win':(context) => Winner(),
        'ai':(context) => AI(),
        'aim1': (context) =>Aim1(),
      },
    ),
  );
}
