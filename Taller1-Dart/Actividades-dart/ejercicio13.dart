import 'dart:io';

void main() {
  stdout.write("Nombre del artículo: ");
  String? articulo = stdin.readLineSync();

  stdout.write("Valor unitario: ");
  double valor = double.parse(stdin.readLineSync()!);

  stdout.write("Cantidad: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  stdout.write("¿Es de la canasta familiar? (si/no): ");
  String? canasta = stdin.readLineSync();

  double total = valor * cantidad;
  if (canasta?.toLowerCase() != 'si') {
    total *= 1.19; // Agrega 19% IVA
  }

  print("Total a pagar por $articulo: \$${total.toStringAsFixed(2)}");
}
