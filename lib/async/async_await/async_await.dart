void main() {
  //aula 95
}
  

Future<String> processo1() {
  print('Inicio P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P1');
}
Future<String> processo2() {
  print('Inicio P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P2');
}
