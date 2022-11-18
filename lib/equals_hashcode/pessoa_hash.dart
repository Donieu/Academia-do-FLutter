// ignore_for_file: public_member_api_docs, sort_constructors_first
//Se pessoa:
//  nome: daniel
//  email: dbreno09          <- esse é o estado da pessoa.
//Se outra pessoa:
//   NOME: MARINA
//   EMAIL: marinacem12  <- esse é outro estado

class Pessoa {
  String nome;
  String email;

//Quando usar o equals? Quando independente da referência de memória, eu quero definir que os objetos são iguais.

  Pessoa({
    required this.nome,
    required this.email,
  });

  /*var isEquals = false;

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email;
  }

  int get hashcode {
    return nome.hashCode ^ email.hashCode;
  }*/

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;
}
