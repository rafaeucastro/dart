void main() {
  //função como variável recebendo uma função anônima
  var adicao = (int a, int b) {
    return a + b;
  };

  var subtracao = (int a, int b) => a - b;

  print(adicao(1, 8));
  print(subtracao(6, 3));

  //função que retorna uma função
  //isso ajuda a fazer um pré-processamento de uma parte da função
  var somar = (int a) {
    int c = 0;
    return (int b) {
      return a + b + c;
    };
  };

  //processamento ainda antigo
  print("Resultado: ${somar(2)(9)}");
  print("Resultado: ${somar(2)(7)}");
  //pré-processamento, agora vou reduzir o tempo
  var somaComDois = somar(2);

  print("Resultado: ${somaComDois(9)}");
  print("Resultado: ${somaComDois(7)}");
}
