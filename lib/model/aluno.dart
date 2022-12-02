// aula 118 - INTERPRETANDO JSON E MAPEANDO PARA O DART
//CRIADO NOVO ARQUIVO COM ENDEREÇO POIS O ENDEREÇO POSSUI MAIS DADOS DENTRO, É UM OBJETO. Um atributo que seja objeto{} dentro do JSON, fica uma classe dentro do dart
import 'dart:convert';
import 'package:dart_poo/model/curso.dart';
import 'package:dart_poo/model/endereco.dart';

class Aluno {
  String id;
  String nome;
  int? idade;
  List<String> nomeCursos;
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
      nome: map['nome'] ?? '',
      idade: map['idade'],
      nomeCursos: List<String>.from(map['nomeCursos'] ?? []),
      // nomeCursos: map['nomeCursos'].cast<String>(),
      endereco: Endereco.fromMap(map['endereco'] ?? {}),
      cursos: map['cursos'].map<Curso>((cursoMap) => Curso.fromMap(cursoMap)).toList(),
    );
  }

  String toJson() => jsonEncode(toMap());
  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, endereco: $endereco, cursos: $cursos)';
  }
}
