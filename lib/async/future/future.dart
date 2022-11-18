void main() {
  print('Inicio do P1');
  processo2();
  //Future tem 2 estados: completo e incompleto, que pode ser com valor, com erro)
  processo3().then((mensagem) {
    print(mensagem);
  });
  print('fim do P1');
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P3');
}

Future<void> processo2() async {
  print('Inicio do p2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
  });
}
