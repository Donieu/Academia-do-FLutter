import 'dart:async'; //aula 105 - take é um cara de transformação

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //stream = stream.take(
     // 5); // serve para limitiar o await for abaixo, com somente 5 requisições
  stream = stream.takeWhile((int numero) => numero <10); //não pare enquanto não for menor que 10

  await for (var i in stream) {
    //esse for wait fica como se fosse um loop infinito, ele vai ficar esperando a stream receber um valor, assim que receber,ele executa
    print(i);
  }
  print('fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
