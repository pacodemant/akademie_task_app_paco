import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class S5331 extends StatelessWidget {
  const S5331({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5331ImagePicker();
    //throw UnimplementedError();
  }
}

class MyTask5331ImagePicker extends StatefulWidget {
  const MyTask5331ImagePicker({super.key});

  @override
  State<MyTask5331ImagePicker> createState() => _MyTask5331ImagePickerState();
}

class _MyTask5331ImagePickerState extends State<MyTask5331ImagePicker> {
  //SECTION - Variablen
  File? imgPath;

/* --------------------------- // change Image URL -------------------------- */
  Future pickImageGal() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        imgPath = File(image.path);
      }
    });
  }

/*   Future pickImageGal() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(
      () {
        imgPath = image?.path ?? '';
      },
    );
  } */
/* -------------------------------------------------------------------------- */

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
              style: TextStyle(
                color: Colors.amber[900],
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
              'Test läuft grün durch,\n aber Button drücken lässt App abstürzen!'),
          FilledButton(
            onPressed: () {
              pickImageGal();
            },
            child: const Text('Tap -> App-Sturz!'),
          ),
          const SizedBox(
            height: 33,
          ),
          imgPath != null
              ? Image.file(imgPath!)
              : const Text('Fehler beim Laden des Bildes'),
        ],
      ),
    );
  }
}
