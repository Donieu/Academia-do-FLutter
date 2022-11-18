//aula 108 - resgatar dados de uma só vez

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  final data = await stream.toList();
  print(data);
  print('fim');

  await for (var i in stream) {
    print(i);
  }
  print('fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
