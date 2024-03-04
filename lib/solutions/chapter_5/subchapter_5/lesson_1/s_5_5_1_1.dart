// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class S5511 extends StatelessWidget {
  const S5511({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5511();
    //throw UnimplementedError();
  }
}

class MyTask5511 extends StatefulWidget {
  const MyTask5511({super.key});

  @override
  State<MyTask5511> createState() => _MyTask5511State();
}

class _MyTask5511State extends State<MyTask5511> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(counter1V.toString()),
        Text(counter2V.toString()),
        ElevatedButton(
          onPressed: () async {
            await counter1F();
            await counter2F();
            print('Ich habe fertick.');
          },
          child: const Text('count up'),
        ),
      ],
    );
  }

  /* --------------------- //die beiden Counter-Variablen --------------------- */
  int counter1V = 0;
  int counter2V = 0;

/* ------------------------- // zwei counter , verzögert ------------------------ */
  Future<void> counter1F() async {
    await warteKurz(300); // simuliert Verzögerung
    counter1V++;
    setState(() {
      null;
    });
    print('Methode 11111 inkrementiert. ');
  }

  Future<void> counter2F() async {
    await warteKurz(1500);
    counter2V++;
    setState(() {
      null;
    });
    print('Methode 22222 inkrementiert.');
  }

/* ----------------- vorgegebene Funktion, Fake-Verzögerung ----------------- */
  // ignoriere für den Moment den Inhalt dieser Methode
  // nutze "await warteKurz();" in deinem Code, um einen Moment zu warten
  Future<void> warteKurz(int verzoegerung) {
    return Future.delayed(Duration(milliseconds: verzoegerung));
  }
}
