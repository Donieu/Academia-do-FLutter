//CRIADO NOVO ARQUIVO COM ENDEREÇO POIS O ENDEREÇO POSSUI MAIS DADOS DENTRO, É UM OBJETO

import 'package:dart_poo/model/cidade.dart';
import 'package:dart_poo/model/telefone.dart';

class Endereco {
  final String rua;
  final int numero;
  final String cep;
  final Cidade cidade;
  final Telefone telefone;
  
  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });
}
