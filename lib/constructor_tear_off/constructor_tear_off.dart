void main() {
  final nomes = ['daniel breno', 'Marina', 'Neymar', 'Família'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();



  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList(); //Melhor forma
  //final pessoas = nomes.map<Pessoa>(Pessoa.new).toList(); // o .new serve para chamar construtores default
  //final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }
  funcaoQualquer(printPessoa);
}

Pessoa printPessoa(String nome) {
  return Pessoa(nome);
}

//passar construtores dentro dos parametros de uma função
void funcaoQualquer(Function(String) funcao) {
  funcao('Rodrigo');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa(nome);
  }
}
