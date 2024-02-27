
import 'package:flutter/material.dart';

class S5111 extends StatelessWidget {
  const S5111({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5111();
    // throw UnimplementedError();
  }
}

class MyTask5111 extends StatefulWidget {
  const MyTask5111({super.key});

  @override
  State<MyTask5111> createState() => _MyTask5111State();
}

class _MyTask5111State extends State<MyTask5111> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 350,
      child: Column(
        children: [
          const Text('Hello World!',style: TextStyle(color: Colors.black),),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          //SECTION - Slider
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 50,
                height: 44,
                color: Colors.transparent,
              ),
              // der Button-BG
              Positioned(
                //  left: 2.0,
                child: Container(
                  width: 28,
                  height: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromRGBO(255, 136, 0, 0.4),
                  ),
                ),
              ),
              // der Button
              Positioned(
                right: 0,
                child: Container(padding: const EdgeInsets.all(8.0),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 132, 0)),
                ),
              ),
    
            ],
          ),
        ],
      ),
    );
  }

  double animatedMove = 0;

  // ignore: unused_element
  void _toggleButton() {
    setState(
      () {
        animatedMove = 33;
      },
    );
  }
}
