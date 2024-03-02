import 'package:flutter/material.dart';

class S5311 extends StatelessWidget {
  const S5311({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5311();
    //throw UnimplementedError();
  }
}

class MyTask5311 extends StatelessWidget {
  const MyTask5311({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333,
      height: 333,
      color: Colors.white,
      child: Image.asset('assets/images/tasks/5.3.1.1_Ella_facebook.jpg'),
    );
  }
}
