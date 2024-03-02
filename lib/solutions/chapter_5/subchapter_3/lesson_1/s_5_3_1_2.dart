import 'package:flutter/material.dart';

class S5312 extends StatelessWidget {
  const S5312({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5312();
    //throw UnimplementedError();
  }
}

class MyTask5312 extends StatefulWidget {
  const MyTask5312({super.key});

  @override
  State<MyTask5312> createState() => _MyTask5312State();
}

class _MyTask5312State extends State<MyTask5312> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            width: sizedBoxwidth,
            'https://i.pinimg.com/564x/25/98/fb/2598fb4fa14d7be609c034aaab141758.jpg'),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                //NOTE - a =  um "var isn't used" abzustellen
                // ignore: unused_local_variable
                int a = 1;
              },
              child: const Text('111'),
            ),
            SizedBox(
              width: sizedBoxwidth,
            )
          ],
        )
      ],
    );
  }

  double sizedBoxwidth = 222;
  void changeImageSize(double number) {
    sizedBoxwidth = number;
  }
}
