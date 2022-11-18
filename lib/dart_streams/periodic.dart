import 'dart:async';

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

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
