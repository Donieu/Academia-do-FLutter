import 'dart:convert';

class CidadeMaisFacil {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;
  
  CidadeMaisFacil({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  factory CidadeMaisFacil.fromMap(Map<String, dynamic> map) {
    return CidadeMaisFacil(
      cep: map['cep'] as String,
      logradouro: map['logradouro'] as String,
      complemento: map['complemento'] as String,
      bairro: map['bairro'] as String,
      localidade: map['localidade'] as String,
      uf: map['uf'] as String,
      ddd: map['ddd'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CidadeMaisFacil.fromJson(String source) => CidadeMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CidadeMaisFacil(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
