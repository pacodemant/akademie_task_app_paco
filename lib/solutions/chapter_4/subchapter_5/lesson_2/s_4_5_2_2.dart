import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyStatelessWidget();
    // throw UnimplementedError();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: <Widget>[
      Text("Hello Paco"),
/// The build function is used to build and return the widget tree for the current state of the app.
/// 
/// Args:
///   context (BuildContext): The context parameter in the build method is an object that provides
/// access to various resources and services in the Flutter framework. It is typically used to obtain
/// information about the current state of the app, such as the theme, localization, and navigation. It
/// is also used to build the widget tree by creating and
           ElevatedButton(onPressed: null,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      child: Text("Klick mich"))
    ]);
  }
}
