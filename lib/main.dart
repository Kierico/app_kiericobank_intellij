import 'package:KiericoBank/models/saldo.dart';
import 'package:KiericoBank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Saldo(0),
          ),

        ],
        child: KiericoBankApp(),
      ),
    );

class KiericoBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        accentColor: Colors.purpleAccent[100],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purpleAccent[100],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
