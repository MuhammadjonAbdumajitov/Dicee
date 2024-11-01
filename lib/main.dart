import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dicee"),

        centerTitle: true,
      ),
      body: DiceApp(),
    ),
  ));
}


class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftImagesNumber = 1;
  var leftImagesNumber2 = 5;

  void changeNumber(){
    setState(() {
      leftImagesNumber = Random().nextInt(6);
      leftImagesNumber2 = Random().nextInt(6);
      if(leftImagesNumber==0){
        leftImagesNumber++;
      }
      if(leftImagesNumber2==0){
        leftImagesNumber2++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();

              },
              child: Image.asset("images/dice$leftImagesNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset("images/dice$leftImagesNumber2.png"),
            ),
          ),
        ],
      ),
    );
  }
}

