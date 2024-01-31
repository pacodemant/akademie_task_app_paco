import 'package:flutter/material.dart';

bool isPrime(int input) {
  // Lösung hier einfügen

  if (input <= 1) {
    return false; //  <=1 != Primzahlen
  }

  for (int i = 2; i <= (input / 2); i++) {
    if (input % i == 0) {
      return false; // durch i ohne Rest teilbar -> != Primzahl
    }
  }

  return true; // keine Teiler gefunden -> == Primzahl

//  throw UnimplementedError();
}

class S3382 extends StatefulWidget {
  const S3382({Key? key}) : super(key: key);

  @override
  State<S3382> createState() => _S3382State();
}

class _S3382State extends State<S3382> {
  final TextEditingController _inputController = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _inputController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Zahl',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input = int.tryParse(_inputController.text);
            if (input == null) {
              setState(() {
                output = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bitte eine Zahl eingeben.'),
                ),
              );
              return;
            }
            setState(() {
              output = isPrime(input) ? "Primzahl" : "Keine Primzahl";
            });
          },
          child: const Text('Prüfen'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
