import 'dart:math';

import 'package:flutter/material.dart';

class AI extends StatefulWidget {
  const AI({Key? key}) : super(key: key);

  @override
  State<AI> createState() => _AIState();
}
// TODO : SET THE FLOW OF CODE
class _AIState extends State<AI> {
  List deco = [
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(right: BorderSide(color: Colors.white),bottom: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(right: BorderSide(color: Colors.white),bottom: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white),top: BorderSide(color: Colors.white),right: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white),top: BorderSide(color: Colors.white),right: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white),top: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(top: BorderSide(color: Colors.white),right: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(top: BorderSide(color: Colors.white),right: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white)))),
    ShapeDecoration.fromBoxDecoration(BoxDecoration(border: Border(top: BorderSide(color: Colors.white),left: BorderSide(color: Colors.white))))
  ];
  int? rando,newindex;
  List userInput = [
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
  List checkIndex = [];
  var rnd;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.home)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    userInput = [
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
                },
                icon: Icon(Icons.restart_alt))
          ],
          title: Text("With AI"),
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 350,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if(userInput[index] == "")
                      {
                        logic(index);
                      }
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Text("${userInput[index]}",style: TextStyle(fontSize: 50,color: Colors.white),),
                    alignment: Alignment.center,
                    decoration: deco[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
  void genrnd()
  {
    var rnd = Random();
    rando = rnd.nextInt(9);
  }

  void logic(int index)
  {
    userInput[index] = "O";
    do{
      genrnd();
      if(userInput[0] != "" && userInput[1] != "" && userInput[2] != "" && userInput[3] != "" && userInput[4] != "" && userInput[5] != "" && userInput[6] != "" && userInput[7] != "" && userInput[8] != "")
      {
        break;
      }
    } while(userInput[rando!] != "");
    if(userInput[rando!] == "")
    {
      userInput[rando!] = "X";
    }
    setState(() {});
    print("+++++++++++++++++++++++++$rando");
    print(userInput);
    if ((userInput[0] == userInput[1]) && (userInput[0] == userInput[2]) && (userInput[0] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[0]);
      userInput = [
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
    else if ((userInput[3] == userInput[4]) && (userInput[3] == userInput[5]) && (userInput[3] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[3]);
      userInput = [
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
    else if ((userInput[6] == userInput[7]) && (userInput[6] == userInput[8]) && (userInput[6] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[6]);
      userInput = [
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
    else if ((userInput[0] == userInput[3]) && (userInput[0] == userInput[6]) && (userInput[0] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[0]);
      userInput = [
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
    else if ((userInput[1] == userInput[4]) && (userInput[1] == userInput[7]) && (userInput[1] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[1]);
      userInput = [
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
    else if ((userInput[2] == userInput[5]) && (userInput[2] == userInput[8]) && (userInput[2] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[2]);
      userInput = [
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
    else if ((userInput[0] == userInput[4]) && (userInput[0] == userInput[8]) && (userInput[0] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[0]);
      userInput = [
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
    else if ((userInput[2] == userInput[4]) && (userInput[2] == userInput[6]) && (userInput[2] != "")) {
      Navigator.pushNamed(context, 'win', arguments: userInput[2]);
      userInput = [
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
    else if(userInput[0] != "" && userInput[1] != "" && userInput[2] != "" && userInput[3] != "" && userInput[4] != "" && userInput[5] != "" && userInput[6] != "" && userInput[7] != "" && userInput[8] != "") {
      Navigator.pushNamed(context, 'win',arguments: "draw");
      userInput = [
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
    };
  }
}
