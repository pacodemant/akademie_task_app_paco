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
      height: 60,
      width: 200,
      child: InkWell(
        onTap: () {
          // ignore: unused_local_variable, avoid_print
          print('Klick funzt');
          _toggleClick();
        },
        child:  Text(
          'fgsfh 2 fold out:\nErstelle ein `Text`-Widget in einer `SizedBox`, die 200px breit und 30px hoch ist. Der Text sollte länger als die Box sein und deshalb nach unten hin den überlaufenden Text ausblenden. Integriere die Funktionalität, dass der Text sich bei einem Klick darauf ausklappt.',
          overflow: overflowMode,
        ),
      ),
    );
  }

// für Lösung über die SizedBox-Höhe
  double heightTextbox = 200;
  // für Lösung über TextOverflow, wie im Test expected
  // Der UI-Test läuft trotzdem nicht grün …
  TextOverflow? overflowMode = TextOverflow.fade;

  // ignore: unused_element
  void _toggleClick() {
    setState(
      () {
         overflowMode = overflowMode == TextOverflow.fade
            ? TextOverflow.visible
            : TextOverflow.fade;
 
        //NOTE - ursprüngliche Lösung über die SizedBox-Höhe
        // aber der UI-Test will was anderes
        //heightTextbox = heightTextbox == 30 ? 200 : 30;
      },
    );
  }
}
