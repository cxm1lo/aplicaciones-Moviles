import 'dart:io';

void main() {
  List<String> campos = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];
  List<List<String>> matriz = List.generate(4, (_) => List.filled(5, ''));

  for (int i = 0; i < 4; i++) {
    print("\nIngrese los datos del compañero ${i + 1}:");
    for (int j = 0; j < campos.length; j++) {
      stdout.write("${campos[j]}: ");
      matriz[i][j] = stdin.readLineSync()!;
    }
  }

  print("\n--- Datos Ingresados ---");
  for (int j = 0; j < campos.length; j++) {
    stdout.write("${campos[j]}\t");
  }
  print("");

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }
}
