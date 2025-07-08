import 'dart:math';

void main() {
  int intentos = 0;
  bool sacarFicha = false;

  while (intentos < 3) {
    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;

    print("Tiro ${intentos + 1}: $dado1 y $dado2");

    if (dado1 == dado2) {
      print("¡Lanzar de nuevo!");
      intentos++;
    } else {
      print("¡Lanza de nuevo!");
      break;
    }

    if (intentos == 3) {
      sacarFicha = true;
    }
  }

  if (sacarFicha) {
    print("¡Saca una ficha!");
  }
}
