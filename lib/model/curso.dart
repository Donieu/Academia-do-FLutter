// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Curso {
  final int id;
  final String nome;
  final bool isAluno;

  Curso({required this.id, required this.nome, required this.isAluno});

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'isAluno': isAluno};
  }

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
        id: map['id'] ?? 0,
        nome: map['nome'] ?? '',
        isAluno: map['isAluno'] ?? false);
  }

  String toJson() => jsonEncode(toMap());
  factory Curso.fromJson(String json) => Curso.fromMap(jsonDecode(json));

  @override
  String toString() => 'Curso(id: $id, nome: $nome, isAluno: $isAluno)';
}
