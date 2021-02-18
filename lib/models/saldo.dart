import 'package:flutter/cupertino.dart';

class Saldo extends ChangeNotifier {
  double valor;

  Saldo(this.valor);

  /* Metodo que adiciona e muda esse valor. */
  void adiciona(double valor) {
    this.valor += valor;

    /* avisa para tudo mundo o que esta sendo alterado. */
    notifyListeners();

  }

  void subtrai(double valor) {
    this.valor -= valor;

    notifyListeners();

  }

  @override
  String toString() {
    return 'R\$ $valor';
  }
}