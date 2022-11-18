import 'package:dart_poo/heran%C3%A7as/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  print(cachorro.tamanho);
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());
  print("""
  Cachorro:
    tamanho: ${cachorro.tamanho}
    Idade: ${cachorro.idade}
    Idade Humana: ${cachorro.calcularIdadeHumana()}
""");
}
