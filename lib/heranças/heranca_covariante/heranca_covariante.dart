import 'package:dart_poo/heran%C3%A7as/heranca_covariante/banana.dart';
import 'package:dart_poo/heran%C3%A7as/heranca_covariante/fruta.dart';
import 'package:dart_poo/heran%C3%A7as/heranca_covariante/humano.dart';
import 'package:dart_poo/heran%C3%A7as/heranca_covariante/macaco.dart';

void main() {
  var macaco = Macaco();
  var humano = Humano();
  humano.comer(Fruta());
  macaco.comer(Banana('Nanica'));
}
