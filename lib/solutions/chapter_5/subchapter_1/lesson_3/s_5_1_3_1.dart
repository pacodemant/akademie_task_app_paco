import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class S5131 extends StatelessWidget {
  const S5131({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const FontsByGoogle();
//    throw UnimplementedError();
  }
}

class FontsByGoogle extends StatelessWidget {
  const FontsByGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Google Font Roboto Slab',
          style: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(fontSize: 20,color: Colors.green,),
          ),
        ),
        Text(
          'Google Font Flow Rounded',
          style: GoogleFonts.flowRounded(
            textStyle: const TextStyle(fontSize: 30,color: Colors.lime,),
          ),
        ),
        Text(
          'Google Font Marhey',
          style: GoogleFonts.marhey(
            textStyle: const TextStyle(fontSize: 40,color: Colors.pink,),
          ),
        ),
        Text(
          'This is Google Fonts',
          style: GoogleFonts.rubikPixels(
            textStyle: const TextStyle(fontSize: 50,color: Colors.orange,),
          ),
        ),
      ],
    );
  }
}
