extension NumberParsing on String {
  ///Converte esse número em inteiro
  int converterInteiro() {
    return int.parse(this);
  }
}

void main() {
  String numero = "1";
  int inteiro = numero.converterInteiro();
}
