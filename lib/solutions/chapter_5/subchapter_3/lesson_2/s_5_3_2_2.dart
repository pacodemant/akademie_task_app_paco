import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class S5322 extends StatelessWidget {
  const S5322({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyTask5322();
    // throw UnimplementedError();
  }
}

class MyTask5322 extends StatelessWidget {
  const MyTask5322({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          'https://i.pinimg.com/564x/25/98/fb/2598fb4fa14d7be609c034aaab141758.jpg',
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
