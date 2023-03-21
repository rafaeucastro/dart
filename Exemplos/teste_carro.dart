import 'carro.dart';
import 'dart:io';

void main() {
  stdout.write("Digite o velocidade máxima do seu carro: ");
  final velMax = stdin.readLineSync().toString();
  Carro fiatUno = new Carro(int.parse(velMax));

  print("Acelerando...");
  while (!fiatUno.estaNoLimite()) {
    print("velocidade atual: ${fiatUno.acelerar()} km/h");
  }
  print("O carro atingiu a sua velocidade máxima: ${fiatUno.velocidadeMaxima}");

  print("\nFreando...");
  while (!fiatUno.estaParado()) {
    print("velocidade atual: ${fiatUno.frear()} km/h");
  }

  print("O carro parou com a velocidade ${fiatUno.velocidadeAtual}");
  print("Bye!");
}
