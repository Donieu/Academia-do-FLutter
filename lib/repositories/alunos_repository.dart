import 'dart:convert';

import 'package:dart_poo/model/aluno.dart';
import '../model/aluno.dart';
import 'package:http/http.dart' as http;
import '../consumo_api_movies2/filme_controller.dart';

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosResponse =
        await http.get(Uri.http('localhost:3031', '/alunos'));
    final alunosList = jsonDecode(alunosResponse.body);
    return alunosList.map<Aluno>((alunoMap) {
      return Aluno.fromMap(alunoMap);
    }).toList();
  }

  Future<Aluno> findById(String id) async {
    final alunoResponse =
        await http.get(Uri.http('localhost:3031', '/alunos/$id'));
    // final alunoMap = jsonDecode(alunoResponse.body);
    // return Aluno.fromMap(alunoMap);
    return Aluno.fromJson(
        alunoResponse.body); // só consigo fazer isso se for um objeto simples
  }

  Future<void> update(Aluno aluno) async {
    await http.put(Uri.parse('http://localhost:3031/alunos/${aluno.id}'),
        body: aluno.toJson(), headers: {'content-type': 'application/json'});
  }

  Future<void> insert(Aluno aluno) async {
    await http.post(Uri.parse('http://localhost:3031/alunos'),
        body: aluno.toJson(), headers: {'content-type': 'application/json'});
  }
}
