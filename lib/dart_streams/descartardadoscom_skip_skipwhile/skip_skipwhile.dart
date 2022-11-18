//aula 107 - skip and skipwhile

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skip(2); // serve para limitiar o await for abaixo, com somente 5 requisições, a função skip serve para pular algum dado(como por exemplo, o primeio cara da lista)
  

  await for (var i in stream) {
    //esse for wait fica como se fosse um loop infinito, ele vai ficar esperando a stream receber um valor, assim que receber,ele executa
    print('O número que foi no await é o $i');
  }
  print('fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
