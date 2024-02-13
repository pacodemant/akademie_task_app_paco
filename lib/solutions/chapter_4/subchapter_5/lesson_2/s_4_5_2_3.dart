import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyNameWidget();
    //throw UnimplementedError();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override

  /// The function returns an instance of the state class associated with the MyNameWidget class.
  State<MyNameWidget> createState() => _MyWidgetState();
}

/// The following class is the state class for a widget named MyNameWidget.
class _MyWidgetState extends State<MyNameWidget> {
  String nameButton = ''; // Der Name sollte in der State-Klasse definiert sein

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nameButton),
        ElevatedButton(
          onPressed: () {
            // Zustandsänderung in einer separaten Funktion aufrufen
            _changeName();
          },
          child: const Text("Name anzeigen"),
        ),
      ],
    );
  }

  // Funktion zum Ändern des Namens
  void _changeName() {
    setState(() {
      nameButton = "Paco";
    });
  }
}


/*

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override
  /// The function returns an instance of the state class associated with the MyNameWidget class.
  State<MyNameWidget> createState() => _MyWidgetState();
}

/// The following class is the state class for a widget named MyNameWidget.
class _MyWidgetState extends State<MyNameWidget> {
  String nameButton = ''; // Der Name sollte in der State-Klasse definiert sein

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nameButton),
        ElevatedButton(
          onPressed: () {
            // Zustandsänderung in einer separaten Funktion aufrufen
            _changeName();
          },
          child: Text("Name anzeigen"),
        ),
      ],
    );
  }

  // Funktion zum Ändern des Namens
  void _changeName() {
    setState(() {
      nameButton = "Paco";
    });
  }
}


*/