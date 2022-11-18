//aula 110 - where faz basicamente a mesma coisa que o skip, descarta os dados que não atendem alguma condição. Diferença entre where(se for true, passa) e skipwhile(se a condição for falsa, não passa)

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((numero) => numero % 6 == 2).take(3);


  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('fim');

}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
