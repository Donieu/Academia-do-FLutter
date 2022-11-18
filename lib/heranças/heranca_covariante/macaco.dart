import 'package:dart_poo/heran%C3%A7as/heranca_covariante/banana.dart';
import 'package:dart_poo/heran%C3%A7as/heranca_covariante/fruta.dart';
import 'package:dart_poo/heran%C3%A7as/heranca_covariante/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print((fruta.tipo));
  }
}
