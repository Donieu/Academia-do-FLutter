import 'package:http/http.dart' as http;

import '../model/alunos.dart';

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:3031/aluno'));
    print(alunosResponse.body);
    return [];
  }
}
