import 'package:dart_poo/consumo_api_movies2/filme_repository.dart';

class FilmeController {
  final _filmeRepository = FilmeRepository();

  Future<void> findAll() async {
    final filmes = await _filmeRepository.findAll();
    filmes.forEach(print);
  }

  Future<void> findById(String id) async {
    final filme = await _filmeRepository.findById(id);
    print(filme);
  }
}
