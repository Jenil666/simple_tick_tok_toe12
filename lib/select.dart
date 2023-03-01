import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Select Mode",
          ),
          actions: [
            Center(
              child: Text("Jenil",style: GoogleFonts.babylonica(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(width: 30,),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(onPressed: () {
                Navigator.pushNamed(context, 'ai');
              }, child: Text("With A.I.",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
            // Center(
            //   child: TextButton(onPressed: () {
            //     Navigator.pushNamed(context, 'home');
            //   }, child: Text("Two Players",style: TextStyle(fontSize: 20,color: Colors.white),)),
            // ),
          ],
        ),
      ),
    );
  }
}
