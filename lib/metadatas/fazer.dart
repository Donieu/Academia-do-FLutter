// ignore_for_file: public_member_api_docs, sort_constructors_first
class Fazer {
  final String quem;
  final String oque;

//Para poder usar uma classe como anotação, necessário que o construtor tenha um Const
  const Fazer({
    required this.quem,
    required this.oque,
  });
}
