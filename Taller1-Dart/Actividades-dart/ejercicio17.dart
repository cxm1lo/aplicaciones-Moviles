import 'dart:io';

void main() {
  stdout.write("Ingrese un número del 0 al 12: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("Número no válido.");
  } else if (numero > 12) {
    print("El factorial es infinito.");
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print("El factorial de $numero es: $factorial");
  }
}
