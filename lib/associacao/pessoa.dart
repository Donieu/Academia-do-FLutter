class Pessoa {
  String? nome;
  //Composição
  //Quando um atributo de associação é obrigatório
  //Estamos falando de composição !!!

  Endereco endereco = Endereco();
  CPF cpf = CPF();


  //Agregação
  //Quando um atributo de associação não é obrigatório
  //Nós estamoas falando de agregação !!! 
  Telefone? telefone;
}

class Endereco {}

class CPF {}

class Telefone {}
