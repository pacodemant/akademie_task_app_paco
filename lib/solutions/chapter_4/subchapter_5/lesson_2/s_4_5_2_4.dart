import "package:flutter/material.dart";

class S4524 extends StatelessWidget {
  const S4524({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
    // throw UnimplementedError();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override

  /// The function returns an instance of the state class associated with the MyNameWidget class.
  State<ShowHideNameWidget> createState() => Paco();
}

/// The following class is the state class for a widget named MyNameWidget.
class Paco extends State<ShowHideNameWidget> {
  String nameAsText = ""; // Der Name sollte in der State-Klasse definiert sein
  String nameOnButton = "Name anzeigen";
//?paco- umschreiben, um initState zu verwenden
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nameAsText),
        ElevatedButton(
          onPressed: () {
            // Zustandsänderung in einer separaten Funktion aufrufen
            _changeName();
          },
          child: Text(nameOnButton),
        ),
      ],
    );
  }

  // Funktion zum Ändern des Namens
  void _changeName() {
    setState(() {
      nameAsText == "" ? nameAsText = "Paco" : nameAsText = "";
      nameOnButton == "Name anzeigen" ? nameOnButton = "Name verstecken" : nameOnButton = "Name anzeigen";
    });
  }
}

