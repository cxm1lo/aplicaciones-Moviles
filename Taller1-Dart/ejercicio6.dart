import 'dart:io';

void main() {
  stdout.write("Ingrese el primero número: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  double b = double.parse(stdin.readLineSync()!);

  if (b == 0) {
    stdout.write("Imposible la división por 0");
  } else {
    double div = a / b;
    print("La división del número $a entre el número $b es: $div");
  }
}
