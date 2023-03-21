import 'dart:io';

main() {
  var saudacao = "Olá mmmmunndo!"; //inferência do tipo

  print(saudacao.runtimeType); //saber o tipo da variável
  print(saudacao);

  stdout.write("Digite algo: "); //mesmo que print, mas não pula linha
  var texto = stdin.readLineSync()!; //ler entrada do usuário

  double n2 = (-5.67).abs(); //abs dá o positivo
  print(n2);
  double n3 = double.parse("12.1765"); //transformar em double
  num n4 = 4;
  n4 = 9.5;

  dynamic v = 123; //tipo dinâmico
  v = "Você digitou: "; //posso atribuir valores de outros tipos assim como o enum

  print(n2 + n3 + n4);
  print(v + texto.toUpperCase());
}
