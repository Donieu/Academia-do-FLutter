// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;


  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial, 
    this.cnpj,
  }) : assert((cpf != null) ? nome != null && razaoSocial == null && cnpj == null : true, 'VoCê enviou seu CPF junto ao CNPJ'),
   assert((cnpj != null) ? nome != null && razaoSocial == null && cpf == null : true, 'VoCê enviou seu CPF junto ao CNPJ');
 
  
}
