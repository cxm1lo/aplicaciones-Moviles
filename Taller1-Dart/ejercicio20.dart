import 'dart:io';

void main() {
  stdout.write("Ingrese un número: ");
  String numero = stdin.readLineSync()!;
  print("Cantidad de dígitos: ${numero.length}");
}
