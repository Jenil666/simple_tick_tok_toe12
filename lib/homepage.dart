import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
//  bool? check;
  int i = 0;
  String? border;
  List Pri = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  String x = "X", y = "O", z = "";
  List deco = [
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            right: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            right: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.white),
            top: BorderSide(color: Colors.white),
            right: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.white),
            top: BorderSide(color: Colors.white),
            right: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.white),
            top: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            right: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            right: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            left: BorderSide(color: Colors.white)))),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    Pri = [
                      "",
                      "",
                      "",
                      "",
                      "",
                      "",
                      "",
                      "",
                      "",
                    ];
                  });

                  print("====> $Pri");
                },
                icon: Icon(Icons.restart_alt))
          ],
          title: Text("With Friend"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 350,
                width: 350,
                child: GridView.builder(
                  itemCount: Pri.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (Pri[index] == "") {
                          i++;
                          if (i % 2 == 0) {
                            z = x;
                            Pri[index] = z;
                            print(Pri);
                          } else {
                            z = y;
                            print(Pri);
                            Pri[index] = z;
                          }
                          setState(() {});
                        }
                        ;
                        if ((Pri[0] == Pri[1]) &&
                            (Pri[0] == Pri[2]) &&
                            (Pri[0] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[0]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[3] == Pri[4]) &&
                            (Pri[3] == Pri[5]) &&
                            (Pri[3] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[3]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[6] == Pri[7]) &&
                            (Pri[6] == Pri[8]) &&
                            (Pri[6] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[6]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[0] == Pri[3]) &&
                            (Pri[0] == Pri[6]) &&
                            (Pri[0] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[0]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[1] == Pri[4]) &&
                            (Pri[1] == Pri[7]) &&
                            (Pri[1] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[1]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[2] == Pri[5]) &&
                            (Pri[2] == Pri[8]) &&
                            (Pri[2] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[2]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[0] == Pri[4]) &&
                            (Pri[0] == Pri[8]) &&
                            (Pri[0] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[0]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if ((Pri[2] == Pri[4]) &&
                            (Pri[2] == Pri[6]) &&
                            (Pri[2] != "")) {
                          Navigator.pushNamed(context, 'win',
                              arguments: Pri[2]);
                          print("winner");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        } else if (Pri[0] != "" &&
                            Pri[1] != "" &&
                            Pri[2] != "" &&
                            Pri[3] != "" &&
                            Pri[4] != "" &&
                            Pri[5] != "" &&
                            Pri[6] != "" &&
                            Pri[7] != "" &&
                            Pri[8] != "") {
                          Navigator.pushNamed(context, 'win',
                              arguments: "draw");
                          Pri = [
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                            "",
                          ];
                        }
                        ;
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Text(
                          "${Pri[index]}",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        decoration: deco[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            i % 2 == 1
                ? Center(
                    child: Text(
                    "X Turn",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ))
                : Center(
                    child: Text(
                    "O Turn",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
          ],
        ),
      ),
    );
  }
}

//&& (Pri[2] != Pri[4]) && (Pri[2] != Pri[6]) && (Pri[0] != Pri[4]) && (Pri[0] != Pri[8]) && (Pri[2] != Pri[5]) && (Pri[2] != Pri[8]) && (Pri[1] != Pri[4]) && (Pri[1] != Pri[7]) && (Pri[0] != Pri[3]) && (Pri[0] != Pri[6]) && (Pri[6] != Pri[7]) && (Pri[6] != Pri[8]) && (Pri[3] != Pri[4]) && (Pri[3] != Pri[5])
