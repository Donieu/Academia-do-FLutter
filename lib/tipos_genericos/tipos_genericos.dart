void main() {
  List<int> numeros = [1, 2, 3, 4];
  numeros.add(10);

  Map<String, int> map = {};

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemCaixa = caixa.getItem();
  print(caixa.alturaItem());

  final caixaBoneco = Caixa<Boneco>();
  caixaBoneco.adicionar(Boneco());
  Boneco? itemBoneco = caixaBoneco.getItem();
  print(caixaBoneco.alturaItem());


  //final caixaComputador = Caixa

} //tipo genérico é um tipo de abstração. Recebe qualquer coisa para trabalhar com qualquer coisa.

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return 
    _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneco extends Item {
  @override
  double altura() {
    return 60.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 80.0;
  }
}
class Computador{}