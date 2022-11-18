import 'package:dart_poo/polimorfismo/medicos.dart';

class Pediatra extends Medicos {
  @override
  void operar() {
    print('examinar criança no pós parto'); 
  }
}
