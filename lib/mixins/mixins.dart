import 'package:dart_poo/mixins/joao.dart';

void main() {
  //Joao é um artista, é um cantor, é um dançar
  var joao = Joao();

  print("""
    João:
      habilidade: ${joao.habilidade()}
      Cantar: ${joao.cantar()}
      Dançar: ${joao.dancar()}


""");

  print(joao.habilidade());
  print(joao.cantar());
  print(joao.dancar());
}
