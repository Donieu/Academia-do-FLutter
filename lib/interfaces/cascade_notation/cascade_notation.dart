void main() {
  var pessoa = Pessoa()
    ..nome = 'Daniel Breno'
    ..email = 'dbreno09@gmail.com'
    ..site = 'www.google.com';
  // pessoa.nome = 'Daniel Breno';
  // pessoa.email = 'dbreno09@gmail.com';
  // pessoa.site = 'wwww.google.com';

  print(""" 
    Pessoa:
      Nome: ${pessoa.nome}
      Email: ${pessoa.email}
      Site: ${pessoa.site}
  """);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;
}
