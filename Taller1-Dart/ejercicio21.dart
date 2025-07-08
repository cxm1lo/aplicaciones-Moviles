import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  stdout.write("¿Desea ver números pares o impares? (par/impar): ");
  String eleccion = stdin.readLineSync()!.toLowerCase();

  print("Serie $eleccion entre $menor y $mayor:");
  for (int i = menor; i <= mayor; i++) {
    if (eleccion == "par" && i % 2 == 0) {
      stdout.write("$i ");
    } else if (eleccion == "impar" && i % 2 != 0) {
      stdout.write("$i ");
    }
  }
  print("");
}
