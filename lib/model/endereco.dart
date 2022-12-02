// ignore_for_file: public_member_api_docs, sort_constructors_first
//CRIADO NOVO ARQUIVO COM ENDEREÇO POIS O ENDEREÇO POSSUI MAIS DADOS DENTRO, É UM OBJETO

import 'dart:convert';

import 'package:dart_poo/model/cidade.dart';
import 'package:dart_poo/model/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap()
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
        rua: map['rua'] ?? '',
        numero: map['numero'] ?? 0,
        cep: map['CEP'] ?? '',
        cidade: Cidade.fromMap(map['cidade'] ?? {}),
        telefone: Telefone.fromMap(map['telefone'] ?? {}));
  }

  String toJson() => jsonEncode(toMap());
  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, cep: $cep, cidade: $cidade, telefone: $telefone)';
  }
}
