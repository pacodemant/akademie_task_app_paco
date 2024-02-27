import 'package:flutter/material.dart';

class S5113 extends StatelessWidget {
  const S5113({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CustomMaterialButton();
    //throw UnimplementedError();
  }
}

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
      //onTap: ,
        child: Container(
        
          alignment: Alignment.center,
          height: 50,
          width: 150,
          color: Colors.blue,
          child: const Text(
            'RippleButton',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
