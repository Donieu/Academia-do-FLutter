//aula 119 - TRABALHANDO COM JSOn NO DART
//1- primeira coisa a se fazer é uma conversão do objeto json, para um objeto do dart
import 'dart:convert';

void main(List<String> arguments) {
  final cidadeJson = ''' 
    {
        "id": 1,
        "nome": "Conto de fadas"

      }
  ''';

  //Se for um JSON que começa com [] = vai retornar um list
  //Se for um JSON que começa com {} = vai retornar um Map<String, dynamic> (tipo objeto)

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
  
  
}
