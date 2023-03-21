import 'dart:io';

//Imprima a série de soma até um número maior que 500
void fibonacci() {
  stdout.write(": Fibonacci\n");
  int soma = 0, antecessor = 0, sucessor = 1;
  List<int> fibonacci = [];

  do {
    soma += antecessor;
    fibonacci.add(soma);
    //print("${soma}\n");
    antecessor = sucessor;
    sucessor = soma;
  } while (soma < 500);
  print(fibonacci);
}

void primos() {
  stdout.write(": Primos\n");
  List<int> lista_primos = [1, 3];
  final int resposta;
  int multiplo, multiplicando = 1, fator = 1;

  stdout.write("Digite um número inteiro: ");
  resposta = int.parse(stdin.readLineSync().toString());

  for (; multiplicando <= resposta; multiplicando++) {
    //zera o múltiplo para cada $multiplicando verificado
    multiplo = 0;
    for (; fator < (multiplicando / 2); fator++) {
      if (fator == 1) continue;
      //se o resto da divisão for igual a zero
      //será multiplo, logo não primo.
      if (multiplicando % fator == 0) multiplo++;
      //se não não tiver múltiplo, então é primo

      //se não tiver nenhum múltiplo então adiciono na minha lista
      if (multiplo == 0) lista_primos.add(multiplicando);
    }
  }
  print(lista_primos);
}

main() {
  print("...Iniciando...\n");
  fibonacci();
  primos();
}
