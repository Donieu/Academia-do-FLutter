//aula 109 - ao inves de ficarparado esperando o programa executar,posso ficar escutando a minha stream

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('fim');

}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
