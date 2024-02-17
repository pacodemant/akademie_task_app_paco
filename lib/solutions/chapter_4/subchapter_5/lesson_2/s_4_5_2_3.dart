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
  String textField = ''; // Der Name sollte in der State-Klasse definiert sein
  String buttonText = 'Name anzeigen'; // Der Name sollte in der State-Klasse definiert sein

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(textField),
        ElevatedButton(
          onPressed: () {
            // Zustandsänderung in einer separaten Funktion aufrufen
            _changeName();
          },
          child:  Text(buttonText),
        ),
      ],
    );
  }

  // Funktion zum Ändern des Namens
  void _changeName() {
    setState(() {
      textField == "Paco" ? textField = "" : textField = "Paco";
      buttonText == "Name anzeigen" ? buttonText = "Name ausblenden" : buttonText = "Name anzeigen";
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
  String textField = ''; // Der Name sollte in der State-Klasse definiert sein

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(textField),
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
      textField = "Paco";
    });
  }
}


*/