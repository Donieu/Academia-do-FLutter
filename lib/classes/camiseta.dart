//atributos e comportamentos
//caracterísitcas
class Camiseta {
  //variaveis dentro da classe são chamados de atributos (de innstância)
  String? tamanho = "G";
  String? _cor = 'Preta';
  String? marca = 'Nike';
 
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == "Verde") {
      throw Exception('Não pode ser igual a verde');
    }
  }

// Atributos de classe. Só podem ser chamandos se chamarmos a classe propriamente(Camiseta)
//importante o método static ser uma constante pois dessa forma ele não poderá ser alterado no contexto do seu projeto. Sempre será "camiseta"
  static const String nome = 'Camiseta';
//Método de classe só podem chamar Atributos de classe (static)
  static String recuperarNome() => nome;

  //Funções dentro de classes são chamados de métodos.
  String? tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar diretamente na máquina. Recomendado lavagem a seco';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
