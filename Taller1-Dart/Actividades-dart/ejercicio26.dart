import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Ingrese la cantidad de jugadores: ");
  int jugadores = int.parse(stdin.readLineSync()!);
  int acumulado = 0;

  while (acumulado >= 0) {
    for (int i = 1; i <= jugadores; i++) {
      print("\nJugador $i - Acumulado: $acumulado moneda(s)");
      int tiro1 = Random().nextInt(6) + 1;
      print("Tiro inicial: $tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        acumulado++;
        print("¡Perdiste! Agregas 1 moneda al acumulado.");
        continue;
      }

      stdout.write("¿Cuánto desea apostar? (máximo $acumulado): ");
      int apuesta = int.parse(stdin.readLineSync()!);
      if (apuesta > acumulado) apuesta = acumulado;

      int tiro2 = Random().nextInt(6) + 1;
      print("Segundo tiro: $tiro2");

      if (tiro2 > tiro1) {
        print("¡Ganaste $apuesta moneda(s)!");
        acumulado -= apuesta;
      } else {
        print("¡Perdiste $apuesta moneda(s)!");
        acumulado += apuesta;
      }

      if (acumulado == 0) {
        print("Fin del juego, el acumulado es 0.");
        return;
      }
    }
  }
}
