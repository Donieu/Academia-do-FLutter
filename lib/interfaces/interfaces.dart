import 'package:dart_poo/interfaces/golzinho.dart';
import 'package:dart_poo/interfaces/uno.dart';
import 'carro.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
  print(gol.tiposDeRodas());

 Carro golCarro = Gol();
  //(golCarro as Gol).tiposDeRodas();

  //Quando checamos se a variável é de um tipo, caso ela seja, o dart vai automaticamente converter 
  //a instância para a classe do tipo 
  if (golCarro is Gol) {
    golCarro.tiposDeRodas();
  }
}

void printarDadosDoCarro(Carro carro) {
  print(""" 
    Carro: 
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
      Tipo de rodas: ${carro is Gol? carro.tiposDeRodas() : 'Não disponível'}
  """);
}
