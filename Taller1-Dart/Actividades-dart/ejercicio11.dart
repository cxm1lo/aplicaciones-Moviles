import 'dart:io';
import 'dart:math';

void main() {
  print("¿Desea ingresar ángulos o lados?");
  print("1. Ángulos");
  print("2. Lados");
  stdout.write("Opción: ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    stdout.write("Ángulo 1: ");
    int a1 = int.parse(stdin.readLineSync()!);
    stdout.write("Ángulo 2: ");
    int a2 = int.parse(stdin.readLineSync()!);
    stdout.write("Ángulo 3: ");
    int a3 = int.parse(stdin.readLineSync()!);

    if (a1 <= 0 || a2 <= 0 || a3 <= 0 || a1 + a2 + a3 != 180) {
      print("Los ángulos no forman un triángulo válido.");
      return;
    }

    if (a1 == 90 || a2 == 90 || a3 == 90) {
      print("Triángulo rectángulo");
    } else if (a1 > 90 || a2 > 90 || a3 > 90) {
      print("Triángulo obtusángulo");
    } else {
      print("Triángulo acutángulo");
    }

  } else if (opcion == 2) {
    stdout.write("Lado 1: ");
    double l1 = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 2: ");
    double l2 = double.parse(stdin.readLineSync()!);
    stdout.write("Lado 3: ");
    double l3 = double.parse(stdin.readLineSync()!);

    List<double> lados = [l1, l2, l3];
    lados.sort();

    if (lados.any((l) => l <= 0) || (lados[0] + lados[1] <= lados[2])) {
      print("Los lados no forman un triángulo válido.");
      return;
    }

    if (l1 == l2 && l2 == l3) {
      print("Triángulo equilátero");
    } else if (l1 == l2 || l2 == l3 || l1 == l3) {
      print("Triángulo isósceles");
    } else {
      print("Triángulo escaleno");
    }

    double a = pow(l1, 2).toDouble();
    double b = pow(l2, 2).toDouble();
    double c = pow(l3, 2).toDouble();

    if ((a + b - c).abs() < 0.01 || (a + c - b).abs() < 0.01 || (b + c - a).abs() < 0.01) {
      print("Además es un triángulo rectángulo");
    }
  } else {
    print("Opción inválida.");
  }
}
