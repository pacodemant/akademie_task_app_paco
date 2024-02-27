import 'package:flutter/material.dart';

class S5132 extends StatelessWidget {
  const S5132({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const FoldingUnfoldingText();
//    throw UnimplementedError();
  }
}

class FoldingUnfoldingText extends StatefulWidget {
  const FoldingUnfoldingText({super.key});

  @override
  State<FoldingUnfoldingText> createState() => _FoldingUnfoldingTextState();
}

class _FoldingUnfoldingTextState extends State<FoldingUnfoldingText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 200,
      child: InkWell(
        onTap: () {
          // ignore: unused_local_variable
          int a = 1;
        },
        child: const Text(
          'Erstelle ein `Text`-Widget in einer `SizedBox`, die 200px breit und 30px hoch ist. Der Text sollte länger als die Box sein und deshalb nach unten hin den überlaufenden Text ausblenden. Integriere die Funktionalität, dass der Text sich bei einem Klick darauf ausklappt.',
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }

}
