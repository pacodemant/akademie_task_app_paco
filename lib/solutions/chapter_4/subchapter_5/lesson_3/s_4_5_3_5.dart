import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ],
    );

    // throw UnimplementedError();
  }
}
