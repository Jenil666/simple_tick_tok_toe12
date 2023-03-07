import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AiLevel extends StatefulWidget {
  const AiLevel({Key? key}) : super(key: key);

  @override
  State<AiLevel> createState() => _AiLevelState();
}

class _AiLevelState extends State<AiLevel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: Text("Select Level"),centerTitle: true,),));
  }
}
