import 'package:KiericoBank/screens/dashboard/saldo.dart';
import 'package:KiericoBank/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LuBank'),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          RaisedButton(
            child: Text('Receber Depósito'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FormularioDeposito();
                })
              );
            },
          ),
        ],
      ),
    );
  }
}
