import 'package:dart_poo/polimorfismo/medicos.dart';

class Anestesista extends Medicos {
  @override
  void operar() {
    print('Preparar e esterilizar os equipamentos');
    print('Anestesiar a paciente');
  }
}
