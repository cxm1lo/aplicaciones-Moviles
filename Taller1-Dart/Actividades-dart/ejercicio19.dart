import 'dart:math';

void main() {
  List<int> numeros = [];
  Random rand = Random();

  while (numeros.length < 6) {
    int num = rand.nextInt(45) + 1;
    if (!numeros.contains(num)) {
      numeros.add(num);
    }
  }

  numeros.sort();
  print("Números del baloto: $numeros");
}
