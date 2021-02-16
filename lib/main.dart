import 'package:KiericoBank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(KiericoBankApp());

class KiericoBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[700], // cor primária.
        accentColor: Colors.purpleAccent[100], // cor secundária.
        buttonTheme: ButtonThemeData(
          // cor botão em tema, pq envolve o texto.
          buttonColor: Colors.purpleAccent[100],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
