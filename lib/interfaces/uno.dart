import 'package:dart_poo/interfaces/carro.dart';

class Uno implements Carro {
  @override
  String motor = '2.0';

  @override
  int portas = 2;

  @override
  int rodas = 4;

  @override
  velocidadeMaxima() {
    return 400;
  }
}
