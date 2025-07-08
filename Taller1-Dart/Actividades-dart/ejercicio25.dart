import 'dart:io';

void main() {
  stdout.write("Ingrese el tamaño del vector: ");
  int tam = int.parse(stdin.readLineSync()!);
  List<int> vector = [];

  for (int i = 0; i < tam; i++) {
    stdout.write("Valor en la posición ${i + 1}: ");
    vector.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("¿Orden ascendente o descendente? (a/d): ");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == 'a') {
    vector.sort();
  } else if (orden == 'd') {
    vector.sort((a, b) => b.compareTo(a));
  } else {
    print("Opción inválida.");
    return;
  }

  print("Vector ordenado: $vector");
}
