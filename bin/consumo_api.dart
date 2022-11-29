//aula 119 - TRABALHANDO COM JSOn NO DART
//1- primeira coisa a se fazer é uma conversão do objeto json, para um objeto do dart
import 'dart:convert';
import 'package:dart_poo/controller/alunos_controller.dart';
import 'package:dart_poo/model/telefone.dart';

void main() {
  AlunosController().findAll();
    AlunosController().findById('1');

}

void main2(List<String> arguments) {
  final cidadeJson = ''' 
    {
        "id": 1,
        "nome": "Conto de fadas"

      }
  ''';

  //Se for um JSON que começa com [] = vai retornar um list
  //Se for um JSON que começa com {} = vai retornar um Map<String, dynamic> (tipo objeto)
  //decode pega o objeto e codificado.
  //Smp retorna dynamic, então nós devamos sempre saber o que está sendo retornado.

  final cidadeMap = jsonDecode(cidadeJson);

  if (cidadeMap is List) {
    print('é uma lista');
  } else if (cidadeMap is Map) {
    print('é um map');
  }
  //cidadeMap.forEach((city) => print(city["nome"])); n sei pq n funcionou isso

  final cidadeMapJson = <String, dynamic>{
    'id': 123,
    'nome': "Rua dos bobos",
    'uf': "DP"
  };
  print(json.encode([cidadeMapJson]));

  final telefoneJson = """
  {
    "ddd": 11,
    "telefone": "61994609218"
  }
""";
  final telefone = Telefone.fromJson(telefoneJson);
  print(telefone.ddd);
  print(telefone.telefone);
  print(telefone.toJson()); //quando tem aspas eu sei que é json
  print(telefone.toMap()); //quando n tem aspas eu sei qu é map
}
