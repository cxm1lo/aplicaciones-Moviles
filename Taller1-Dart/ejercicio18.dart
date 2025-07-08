import 'dart:io';

void main() {
  List<int> numeros = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Ingrese el número $i: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("¿Desea ordenarlos de forma ascendente o descendente? (a/d): ");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == 'a') {
    numeros.sort();
  } else if (orden == 'd') {
    numeros.sort((a, b) => b.compareTo(a));
  } else {
    print("Opción inválida.");
    return;
  }

  print("Números ordenados: $numeros");
}
