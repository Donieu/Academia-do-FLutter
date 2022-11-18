// p1 = 'Daniel'
// p2 = 'Marina'           ambas são referências de memória. (estão ligados ao hashCdde)
import 'pessoa_hash.dart';

void main() {
  Pessoa p1 = Pessoa(nome: 'Daniel Breno', email: 'dbreno09@gmail.com');
  Pessoa p2 = Pessoa(nome: 'Daniel Breno', email: 'dbreno09@gmail.com');

 



  if (p1 == p2) {
    print('Nomes iguais');
  } else {
    print('são nomes diferentes');
  }
}
