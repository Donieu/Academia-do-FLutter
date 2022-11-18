import 'package:dart_poo/polimorfismo/anestesista.dart';
import 'package:dart_poo/polimorfismo/medicos.dart';
import 'package:dart_poo/polimorfismo/obstetra.dart';
import 'package:dart_poo/polimorfismo/pediatra.dart';

void main() {
  //parto
  var medicos = <Medicos>[
    Anestesista(),
    Obstetra(),
    Pediatra(),
  ];

  //realizar um parto
  for (var medico in medicos) {
    medico.operar(); 
  }
}
