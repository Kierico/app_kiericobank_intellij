import 'package:KiericoBank/models/saldo.dart';
import 'package:KiericoBank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LuBank'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SaldoCard(Saldo(1000000.00)),
      ),
    );
  }
}
