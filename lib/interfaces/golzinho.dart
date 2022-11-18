import 'package:dart_poo/interfaces/carro.dart';

class Gol implements Carro {
  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }

  String tiposDeRodas() {
    return 'Esportivas';
  }
}
