import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Ingrese el radio del cilindro: ");
  double radio = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la altura del cilindro: ");
  double altura = double.parse(stdin.readLineSync()!);

  if (radio <= 0 || altura <= 0) {
    print("Dimensiones inválidas.");
    return;
  }

  double areaBase = pi * pow(radio, 2);
  double areaLateral = 2 * pi * radio * altura;
  double areaTotal = 2 * areaBase + areaLateral;
  double volumen = areaBase * altura;

  print("Área total (con tapa): $areaTotal m²");
  print("Volumen: $volumen m³");
}
