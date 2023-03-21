import 'dart:io';

void main() {
  //CONSTANTES
  var lista = const ['eu', 'tu', 'ele'];
  //lista.add('nós');
  lista = ["oq"];
  print(lista);

  //INTERPOLAÇÃO
  print("9 * 9 = ${9 * 9}");

  //GENERICS
  List<int> numerosDaSorte = [1, 2];
  var numeros = <int>[3, 4];
  print("$numerosDaSorte, $numeros");

  Map<String, int> eu = {"kkk": 1};
  print(eu);
}
