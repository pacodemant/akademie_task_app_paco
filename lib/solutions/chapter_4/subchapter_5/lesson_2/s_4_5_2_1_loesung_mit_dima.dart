import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello Paco",
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Klick Mich"),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyStatelessWidget(),
      ),
    ),
  ));
}


class S4521 extends StatelessWidget {
  const S4521({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

