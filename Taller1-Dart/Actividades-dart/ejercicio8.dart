import 'dart:io';
import 'dart:math';

void main() {
  print("--- Menú de operaciones ---");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo");
  print("6. Cuadrado de un número");
  print("7. Raíz cuadrada");
  print("8. Potencia");
  print("9. Porcentaje");
  print("10. Número aleatorio");

  stdout.write("Seleccione una opción (1-10): ");
  int opcion = int.parse(stdin.readLineSync()!);

  double num1, num2;

  switch (opcion) {
    case 1:
      stdout.write("Ingrese el primer número: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${num1 + num2}");
      break;
    case 2:
      stdout.write("Ingrese el primer número: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${num1 - num2}");
      break;
    case 3:
      stdout.write("Ingrese el primer número: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${num1 * num2}");
      break;
    case 4:
      stdout.write("Ingrese el dividendo: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el divisor: ");
      num2 = double.parse(stdin.readLineSync()!);
      if (num2 == 0) {
        print("Imposible la división por 0.");
      } else {
        print("Resultado: ${num1 / num2}");
      }
      break;
    case 5:
      stdout.write("Ingrese el número: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el divisor: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${num1 % num2}");
      break;
    case 6:
      stdout.write("Ingrese el número: ");
      num1 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${num1 * num1}");
      break;
    case 7:
      stdout.write("Ingrese el número: ");
      num1 = double.parse(stdin.readLineSync()!);
      if (num1 < 0) {
        print("No se puede calcular raíz de un número negativo.");
      } else {
        print("Resultado: ${sqrt(num1)}");
      }
      break;
    case 8:
      stdout.write("Ingrese la base: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el exponente: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${pow(num1, num2)}");
      break;
    case 9:
      stdout.write("Ingrese el número base: ");
      num1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el porcentaje: ");
      num2 = double.parse(stdin.readLineSync()!);
      print("Resultado: ${(num1 * num2) / 100}");
      break;
    case 10:
      int aleatorio = Random().nextInt(100) + 1;
      print("Número aleatorio generado: $aleatorio");
      break;
    default:
      print("Opción no válida.");
  }
}
