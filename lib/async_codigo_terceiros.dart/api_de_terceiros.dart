//aula 99 - darc async api de terceiros
//aula 100 - exemplo prático de requisição de API
//aula 101 - conceito de modelo - uma represnetação exata no json baseada numa classe dart
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  //await buscarCep();
  //await buscarPosts();
  //await buscarCepErro();
  //await salvarPost();
  await alterarPost();
}

Future<void> alterarPost() async {
  //put para atualização
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapRequest = {
    'id': 1,
    'title': 'Post: alterado',
    'body': 'descrição do post',
    'userId':
        1 // o post obrigatoriamente precisa mandar um dado para lá.  Mandar um body
  };
  var response =
      await http.put(Uri.parse(url), body: convert.jsonEncode(mapRequest));
  headers:
  {
    'Content-type'
        'aplication/json; charset-UTF-8';
  }
  ;
  print(response.statusCode);
  print(response.body);
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var mapRequest = {
    'title': 'Post: novo',
    'body': 'descrição do post',
    'userId':
        1 // o post obrigatoriamente precisa mandar um dado para lá.  Mandar um body
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPosts() async {
  // json lista
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(
      url)); //A REQUISIÇÃo vai trazer os dados de forma string, então é necessário converter manualmente
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  // json simples
  var url = 'http://viacep.com.br/ws/01001000/json/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['localidade']);
      print(responseData['logradouro']);
    }
  }
}

Future<void> buscarCepErro() async {
  // json simples
  var url = 'http://viacep.com.br/ws/01001000/jsnn/';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['localidade']);
      print(responseData['logradouro']);
    }
  } else {
    print('tem erro nesse link, hein, mensagem: ${response.reasonPhrase}');
  }
}
