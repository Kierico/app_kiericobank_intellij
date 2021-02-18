import 'package:KiericoBank/models/saldo.dart';
import 'package:KiericoBank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* ChangeNotifierProvider = Proverdo de Notificações de Mudanças. */
void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => Saldo(0),
        child: KiericoBankApp(),
      ),
    );

class KiericoBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: Colors.purple[700], // cor primária.
        accentColor: Colors.purpleAccent[100], // cor secundária.
        buttonTheme: ButtonThemeData(
          // cor botão em tema, pq envolve o texto.
          buttonColor: Colors.purpleAccent[100],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
