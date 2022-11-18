//aula 101

import 'package:http/http.dart';
import '../../async_codigo_terceiros.dart/cidade.dart';
import '../../async_codigo_terceiros.dart/user.dart';


void main() {
  //buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = 'http://viacep.com.br/ws/01001000/json/';

  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var responseData = jsonDecode(response.body);
    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['localidade']);
    //   print(responseData['logradouro']);
    // }
    var cidade = Cidade.fromJson(response.body);
    print(cidade.cep);
    print(cidade.logradouro);
    print(cidade.localidade);

    print(cidade.toMap());
    print(cidade.toJson());
  }
}

Future<void> buscarUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
  }
}
