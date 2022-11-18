class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;

  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome);
  }
}


//um padrão para ordenar a lista de clientes sem precisar criar um Sort();