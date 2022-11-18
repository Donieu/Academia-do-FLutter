import 'cliente_ordenacao.dart';

void main() {
  var c1 = Cliente(nome: 'leite', telefone: '61994609218');
  var c2 = Cliente(nome: 'BRENO', telefone: '6133731390');
  var c3 = Cliente(nome: 'MARINA', telefone: '619994609217');
  var c4 = Cliente(nome: 'Daniel', telefone: '6195442255');

  var lista = [c1, c2, c3, c4];

  //print(lista);
  lista.sort();
  //lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}
