// aula 118 - INTERPRETANDO JSON E MAPEANDO PARA O DART
//CRIADO NOVO ARQUIVO COM ENDEREÇO POIS O ENDEREÇO POSSUI MAIS DADOS DENTRO, É UM OBJETO. Um atributo que seja objeto{} dentro do JSON, fica uma classe dentro do dart
import 'curso.dart';
import 'endereco.dart';

class Aluno {
  final String id;
  final String nome;
  int? idade;
  final List<String> nomeCursos;
  Endereco endereco;
  List<Curso> cursos;

  Aluno({
    required this.id,
    required this.nome,
     this.idade,
    required this.nomeCursos,
    required this.endereco,
    required this.cursos
  });
}
