import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número ");
  double b = double.parse(stdin.readLineSync()!);

  double multi = a * b;

  print("El producto del número $a con el número $b es: $multi");
}
