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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
          title: Text("Tick Tak Toe"),
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 350,
            color: Colors.red,
            child: GridView.builder(
              itemCount: Pri.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if(Pri[index]==""){
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
                    };
                    if(Pri != "")
                      {
                        if((Pri[0] == Pri[1]) && (Pri[0] == Pri[2]))
                        {
                          //Navigator.pushNamed(context, 'win',arguments: Pri[0]);
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
                        };

                      }
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Text("${Pri[index]}"),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}



