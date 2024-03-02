import 'package:flutter/material.dart';

class S5133 extends StatelessWidget {
  const S5133({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5133();
    //throw UnimplementedError();
  }
}

class MyTask5133 extends StatelessWidget {
  const MyTask5133({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 200,
      color: Colors.white,
      child: Container(
        width: 200,
        height: 100,
        padding: const EdgeInsets.fromLTRB(33, 55, 0, 0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(
              77,
              55,
            ),
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.elliptical(
              77,
              55,
            ),
            topRight: Radius.circular(22),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 9.0,
              blurStyle: BlurStyle.normal,
              spreadRadius: 1.0,
              offset: Offset(3, 3),
            ),
          ],
          color: Color.fromARGB(255, 96, 139, 104),
        ),
        child: const Text('Padding links & oben'),
      ),
    );
  }
}
