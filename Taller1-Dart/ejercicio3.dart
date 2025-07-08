import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  double b = double.parse(stdin.readLineSync()!);

  double suma = a + b;
  print("La suma del número $a con el número $b es: $suma");
}
