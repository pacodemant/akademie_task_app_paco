// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S5114 extends StatelessWidget {
  const S5114({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5114();
    //throw UnimplementedError();
  }
}

class MyTask5114 extends StatefulWidget {
  const MyTask5114({super.key});

  @override
  State<MyTask5114> createState() => _MyTask5114State();
}

class _MyTask5114State extends State<MyTask5114> {
  // initiale fontSize
  double fontSizeChange = 20.0;
  Color boxColor = Colors.red;

@override

  // Verzögert die Änderung des Fonts
  void initState() {
    //NOTE - super.initState() wird aufgerufen, damit die Superklasse sich zuerst initialisiert,
    // bevor weitere State-änderungen stattfinden. 
    // super.initState() sollte daher immer in jeder initState() aufgerufen werden
    // für einen ordnungsgemäßen Ablauf
    super.initState();
    //chatGPT empfiehlt: Timer innerhalb der setState-Funktion starten, um die Animation zu erfassen
    setState(
      () {
        Timer(
          Duration(seconds: 3),
          () {
            changeFont();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        color: boxColor,
        duration: const Duration(milliseconds: 600),
        // curve: Curves.bounceIn,
        child: Text(
          textAlign: TextAlign.center,
          'Die Farbe fadet, aber die fontSize \nwill nich\' animieren‼ 🤬 …',
          style: TextStyle(fontSize: fontSizeChange),
        ),
      ),
    );
  }

  void changeFont() {
    // if-Bedingung ist da, weil die fontSize sonst hin und her switcht
    // Grund: setState baut den Screen ja immer wieder neu auf,
    // offenbar wird dann auch der Timer neu gestartet.
    if (fontSizeChange == 20 && boxColor == Colors.red) {
      setState(
        () {
          fontSizeChange = 30;
          boxColor = Colors.green;
          //die folgende, auskommentierte if-Bedingung, wenn onTap die fontSize switchen soll
          // aber das war ja nicht die Aufgabe ;-)
          // fontSizeChange = fontSizeChange == 20 ? 30 : 20;
        },
      );
    }
  }
}
