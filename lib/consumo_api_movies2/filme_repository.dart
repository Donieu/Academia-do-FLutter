import 'dart:convert';
import 'package:dart_poo/consumo_api_movies2/model2/filme.dart';
import 'package:http/http.dart' as http;

class FilmeRepository {
  Future<List<Filme>> findAll() async {
    final filmeResponse = await http.get(Uri.http('localhost:3031', 'filmes'));

    final filmesList = jsonDecode(filmeResponse.body);
    return filmesList.map<Filme>((filmeMap) {
      return Filme.fromMap(filmeMap);
    }).toList();
  }

  Future<Filme> findById(String id) async {
    final filmeResponse =
        await http.get(Uri.http('localhost:3031', '/filmes/$id'));
    return Filme.fromJson(filmeResponse.body);
  }
}
