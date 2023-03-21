enum Celular {
  Motorola,
  Samsung,
  Xiaomi,
  LG,
  Positivo;

  String get model => "Celular " + this.name;
}

enum Alcool {
  etilico(70),
  isopropilico(30);

  const Alcool(this.graus);

  final int graus;
}

void main(List<String> args) {
  print(Celular.Motorola.index);
  print(Celular.Positivo.name);
  print(Celular.values);
  print(Celular.LG.model);

  print(Alcool.isopropilico.graus);
  assert(Alcool.etilico.graus == 70, "O alcool deve ser 70º");
}
