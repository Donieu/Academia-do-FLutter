import 'dart:io';

import 'package:dart_poo/metadatas/fazer.dart';

@Fazer(
  quem: 'Daniel Breno na class',
  oque: 'tentando ler a anotação da classe',
)
@gzip
class Pessoa {
  @Fazer(
  quem: 'Daniel Breno no atributo',
  oque: 'tentando ler a anotação no atributo',
)
  String? nome;
  
}
