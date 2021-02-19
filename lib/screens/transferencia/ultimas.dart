import 'package:KiericoBank/models/transferencias.dart';
import 'package:KiericoBank/screens/transferencia/lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Últimas Transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Consumer<Transferencias>(
          builder: (context, transferencias, child) {
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, indice) {
                return ItemTransferencia(transferencias.transferencias[indice]);
              },
            );
          }
        ),
        RaisedButton(
          child: Text('Transferências'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }),
            );
          },
        ),
      ],
    );
  }
}
