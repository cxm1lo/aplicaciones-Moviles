import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");
  stdout.write("Opción: ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    stdout.write("Base: ");
    double base = double.parse(stdin.readLineSync()!);
    stdout.write("Altura: ");
    double altura = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 1: ");
    double lado1 = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 2: ");
    double lado2 = double.parse(stdin.readLineSync()!);
    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;
    if (area <= 0 || perimetro <= 0) {
      print("Área o perímetro inválido.");
    } else {
      print("Triángulo: Área = $area m², Perímetro = $perimetro m");
    }
  } else if (opcion == 2) {
    stdout.write("Base: ");
    double base = double.parse(stdin.readLineSync()!);
    stdout.write("Altura: ");
    double altura = double.parse(stdin.readLineSync()!);
    double area = base * altura;
    double perimetro = 2 * (base + altura);
    if (area <= 0 || perimetro <= 0) {
      print("Área o perímetro inválido.");
    } else {
      print("Rectángulo: Área = $area m², Perímetro = $perimetro m");
    }
  } else if (opcion == 3) {
    stdout.write("Radio: ");
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * pow(radio, 2);
    double perimetro = 2 * pi * radio;
    if (area <= 0 || perimetro <= 0) {
      print("Área o perímetro inválido.");
    } else {
      print("Círculo: Área = $area m², Perímetro = $perimetro m");
    }
  } else {
    print("Opción no válida.");
  }
}
