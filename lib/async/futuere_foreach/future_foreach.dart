Future<void> main() async {
  var nomes = ['daniel', 'marina', 'neymar'];

  // print('Inicio');
  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome)); 
  // });
  // print('Fim');
  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);
} //aula 95

Future<String> saudacao(String nome) async {
  print('inicio $nome');
  //quando colocar o async? sempre que eu for executarum await dentro da minha função.
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}

Future<void> p1() async {
  saudacao('nome');
}
