void main() {
  int idade = 24;
  double altura = 1.70;
  bool geek = (idade != altura);
  String nome = "Lucas" "$idade";

  List<String> listaNomes = ["Richard", "Alex", "Lucas", "Teste"];
  List lucas = [24, 1.76, true, 'Lucas'];

  if (idade > 18) {
    print("maior de 18");
  }

  for (var element in listaNomes) {
    print(element);
  }

  print("${lucas[3]}");
  print(nome);

  Fruta fruta = Fruta('laranja', 1.4, 'laranja', 'laranja', 40);
  fruta.estaMadura(39);
  print(fruta.isMadura);
}

mostrarMadura(String nome, {String? cor}) {}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome: nome, cor: cor, peso: peso);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento({
    required this.nome,
    required this.peso,
    required this.cor,
  });

  void printAlimento() {
    print('Esta aliemnto $nome, pesa $peso gramas');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes({
    required String nome,
    required double peso,
    required String cor,
    required this.isPrecisaCozinhar,
  }) : super(nome: nome, peso: peso, cor: cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome esta cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
