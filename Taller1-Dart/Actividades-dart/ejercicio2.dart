import 'dart:io';

void main() {
  stdout.write("Ingrese su nombre: ");
  String? nombre = stdin.readLineSync();

  stdout.write("Ingrese su sexo: ");
  String? sexo = stdin.readLineSync();

  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su salario: ");
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Tiene vehículo? (si/no): ");
  String? tieneVehiculo = stdin.readLineSync();

  print("\n--- Datos Ingresados ---");
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo?.toLowerCase() == 'si' ? 'Sí' : 'No'}");
}
