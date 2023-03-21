main() {
  //o continue interrompe uma execução/iteração do laço
  int a = 1;
  for (; a < 10; a++) {
    if (a % 2 == 0) continue;
    print(a);
  }

//o break interrompe toda a execução do laço
  a = 1;
  for (; a < 10; a++) {
    if (a == 6) break;
    print(a);
  }
}
