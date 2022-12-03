import 'package:dart_poo/model/cidade.dart';
import 'package:dart_poo/model/curso.dart';
import 'package:dart_poo/model/endereco.dart';
import 'package:dart_poo/model/telefone.dart';

import '../model/aluno.dart';
import '../repositories/alunos_repository.dart';
import 'package:http/http.dart' as http;

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);
    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');

    aluno.nomeCursos.add('Operador de drone');
    await _alunosRepository.update(aluno);

    final alunoAlterado = await _alunosRepository.findById('1');
    print(alunoAlterado.nomeCursos);
    print(alunoAlterado.nome);
    print('tem os cursos:');
  }

  Future<void> insert() async {
    final aluno = Aluno(
        id: '3',
        nome: 'Neymar',
        nomeCursos: ['Seleção Brasileira'],
        endereco: Endereco(
            rua: 'Paris',
            numero: 5,
            cep: '72225175',
            cidade: Cidade(id: 1, nome: 'Barramas'),
            telefone: Telefone(ddd: 11, telefone: '94609217')),
        cursos: [
          Curso(
              id: 1,
              nome: 'Escola de cadetes agulhas vermelhas',
              isAluno: true),
          Curso(id: 2, nome: 'Engenharia do corpo', isAluno: false),
        ]);
    _alunosRepository.insert(aluno);
  }
}
