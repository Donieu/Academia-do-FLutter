//aula 111 - faz com que haja mais de um ouvinte durante a leitura do listener

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream(); // este comando notifica mais de um ouvinte

  stream = stream.take(10);
  stream.listen((numero) {
    print('Listen value 1: $numero');
  });
  stream.listen((numero) {
    print('Listen value 2: $numero');
  });

 
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
