//aula 102
import 'package:dart_poo/repository_pattern/models/repositories/cidade_repository.dart';
import 'package:dart_poo/repository_pattern/models/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(1);
    print(user?.name ?? 'Usuário não encontrado');

    // if (user != null) {
    //   print(user.name);
    // } else {
    //   print('Usuário não encontrado');
    // }

  } catch (e) {
    print('erro ao buscar cidade');
  }
}
