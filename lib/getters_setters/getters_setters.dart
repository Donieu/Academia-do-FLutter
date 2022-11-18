void main() {
  var pessoa = Pessoa();
  print(pessoa.nome);
  pessoa.nome = 'Daniel Breno';
}

class Pessoa {
  String? _nome;

  String? get nome => _nome; //Getter
  set nome(String? nome) {
    if (nome != null && nome.length > 2) {
      _nome = nome;
    }
  }
}
//Getters e Setters são métodos de acesso aos atributos
//Devem ser implementados se houver uma regra de negócios