import 'dart:io';

void main() {
  double nota = 6.8.roundToDouble();
  print(nota);

  String s1 = "Rafael castro";
  String s2 = s1.substring(0, 6);
  String s3 = s2.toUpperCase();
  String s4 = s3.padRight(10, "%");
  print(s4);
  var s5 = "Rafael Castro".substring(0, 6).toUpperCase().padRight(10);
  print(s5);

  stdout.write("Está chovendo? (s/N)");
  bool estaChovendo = stdin.readLineSync() == "s";
  print(estaChovendo);

  stdout.write("Está frio? (s/N)");
  bool estaFrio = stdin.readLineSync() == "s";
  print(estaFrio);

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair";
  print(resultado);
}
