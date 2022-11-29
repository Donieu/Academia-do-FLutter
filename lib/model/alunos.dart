
// aula 118 - INTERPRETANDO JSON E MAPEANDO PARA O DART
//CRIADO NOVO ARQUIVO COM ENDEREÇO POIS O ENDEREÇO POSSUI MAIS DADOS DENTRO, É UM OBJETO. Um atributo que seja objeto{} dentro do JSON, fica uma classe dentro do dart
import 'dart:convert';

import 'curso.dart';
import 'endereco.dart';

class Aluno {
  final String id;
  final String nome;
  int? idade;
  final List<String> nomeCursos;
  Endereco endereco;
  List<Curso> cursos;

  Aluno(
      {required this.id,
      required this.nome,
      this.idade,
      required this.nomeCursos,
      required this.endereco,
      required this.cursos});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'endereco': endereco.toMap(),
      'cursos': cursos.map((curso) => curso.toMap()).toList()
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      idade: map['idade'],
      nome: map['nome'] ?? '',
      nomeCursos: map['nomeCursos'],
      endereco: Endereco.fromMap(map['endereco']),
      cursos: map["cursos"].map((cursoMap) => Curso.fromMap(cursoMap)).toList(),
    );
  }

  String toJson() => jsonEncode(toMap());
  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, endereco: $endereco, cursos: $cursos)';
  }
}
