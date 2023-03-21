//Função genérica para filtrar a minha lista passada ao parâmetro
List<GEN> filtro<GEN>(List<GEN> lista, bool Function(GEN) Fn) {
  List<GEN> lista_filtrada = [];
  for (GEN elemento in lista) {
    if (Fn(elemento)) {
      lista_filtrada.add(elemento);
    }
  }

  return lista_filtrada;
}

void main() {
  List<double> notas = [2.3, 4.5, 8.8, 9.1, 6.8, 7.3];
  //função de verificação
  var boasNotasFn = (double nota) => nota >= 7.0;
  //usando o filtro
  var NotasBoas = filtro(notas, boasNotasFn);
  print(NotasBoas);

  List<String> nomes = ['Rafael', 'Lia', 'Matheus', 'Bia', 'Jessé', 'Abraão'];
  //função de verificação
  var nomesGrandesFn = (String nome) => nome.length >= 5;
  print(filtro(nomes, nomesGrandesFn));

  //esta função filtro implementada atrás é o mesmo do método where
  //usando o where eu só preciso da função de filtro
  print(nomes.where(nomesGrandesFn));
}
