import 'package:flutter/material.dart';
import 'styles.dart';

class S5112 extends StatelessWidget {
  const S5112({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ProfileAnimal();
    //throw UnimplementedError();
  }
}

class ProfileAnimal extends StatelessWidget {
  const ProfileAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
//      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(10),
      width: 340,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/tasks/5.1.1.2_lama.png'),
          const SizedBox(
            height: 15,
          ),
          //SECTION - name
          Text(
            'Name',
            style: textHead,
          ),
          Text(
            'Freaky Fish',
            style: textCopy,
          ),

          const SizedBox(
            height: 15,
          ),
          //SECTION - Gewicht
          Text(
            'Gewicht',
            style: textHead,
          ),
          Text(
            '120 kg',
            style: textCopy,
          ),
          const SizedBox(
            height: 15,
          ),
          //SECTION - Größe
          Text(
            'Größe',
            style: textHead,
          ),
          Text(
            '170 cm',
            style: textCopy,
          ),
          const SizedBox(
            height: 15,
          ),
          //SECTION - Lieblingsessen
          Text(
            'Lieblingsessen',
            style: textHead,
          ),
          Text(
            'Caipirinha',
            style: textCopy,
          ),
        ],
      ),
    );
  }
}
