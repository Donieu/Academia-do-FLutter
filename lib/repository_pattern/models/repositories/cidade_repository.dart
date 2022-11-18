import 'package:dart_poo/repository_pattern/models/cidade.dart';
import 'package:http/http.dart';

class CidadeRepository {
  Future<Cidade> buscarCidade() async {
    var url = 'http://viacep.com.br/ws/01001000/json/';

    var response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Cidade.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
