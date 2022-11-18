import 'dart:async';

void main() {
  // aula 96
  print('main');
  scheduleMicrotask(() => print('microtask 0'));
  Future.delayed(Duration(seconds: 1), () => print('future 01 delayed'));
  Future(() => print('future #2'));
  Future(() => print('future #3'));


  scheduleMicrotask(() => print('microtask 2'));
  print('fim main');
}
