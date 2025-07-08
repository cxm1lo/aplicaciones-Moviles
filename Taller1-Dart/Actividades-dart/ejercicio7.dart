import 'dart:io';

void main() {
  print("Menú de colores:");
  print("1. Amarillo");
  print("2. Azul");
  print("3. Rojo");

  stdout.write("Ingrese el primer color (1-3): ");
  int c1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo color (1-3): ");
  int c2 = int.parse(stdin.readLineSync()!);

  String combinarColores(int a, int b) {
    if ((a == 1 && b == 2) || (a == 2 && b == 1)) {
      return "verde";
    } else if ((a == 1 && b == 3) || (a == 3 && b == 1)) {
      return "naranja";
    } else if ((a == 2 && b == 3) || (a == 3 && b == 2)) {
      return "violeta";
    } else if (a == b && (a >= 1 && a <= 3)) {
      return "el mismo color dos veces";
    } else {
      return "combinación no válida";
    }
  }

  String resultado = combinarColores(c1, c2);
  print("Su combinación es: $resultado");
}
