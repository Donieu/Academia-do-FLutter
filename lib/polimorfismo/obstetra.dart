import 'package:dart_poo/polimorfismo/medicos.dart';

class Obstetra extends Medicos {
  @override
  void operar() {
    print('prepar o paciente ');
    print('fazer o parto ');
  }
}
