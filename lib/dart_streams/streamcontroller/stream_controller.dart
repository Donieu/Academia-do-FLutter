//aula 112 - controladores de stream - enviar e receber dados (in out)
import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      // .skip(1)
      //.where((numero) => numero % 2 == 0)
      //.map((numero) => 'O valor par enviado é $numero')
      .listen((pessoa) {
    print('Seja bem vinda ${pessoa.nome}'); //print(strconvertida);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    //inStream.add(numero);
    inStream.add(Pessoa(nome: 'daniel breno $numero'));
    await Future.delayed(Duration(milliseconds: 500));
  }
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
