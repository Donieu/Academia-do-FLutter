// ignore_for_file: public_member_api_docs, sort_constructors_first
//AULA 120 - Métddos que convertem json para objetos para classes. Então cria-se métodos para auxlliar

import 'dart:convert';

class Telefone {
  final int ddd;
  final String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

//é um método que pega o objeto(Telefone) e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

//É UM CONSTRUTOR, ELE VAI PEGAR UM MAP E TRANSFORMAR EM UM OBJETO TELEFONE
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(ddd: map['ddd'] ?? 0, telefone: map['telefone'] ?? '');
  }

  //Método que retorna uma String json do meu objeto telefone
  String toJson() => jsonEncode(toMap());

//Método que baseado em uma string jason, retorna um objeto telefone
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
