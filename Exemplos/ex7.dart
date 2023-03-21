import 'dart:math';

main() {
  List<String> hashtags = ["#", "#", "#", "#", "#", "#"];
  String resultado = "";
  for (String h in hashtags) {
    resultado = resultado + h;
    print(resultado);
  }

  for (var h = '#'; h != "#######"; h += '#') {
    print(h);
  }

  Random().nextInt(10) % 2 == 0 ? print("Par") : print("Impar");
}
