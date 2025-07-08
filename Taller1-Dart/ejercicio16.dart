import 'dart:io';

void main() {
  stdout.write("¿Cuántos números de la serie Fibonacci deseas?: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;
  for (int i = 0; i < cantidad; i++) {
    stdout.write("$a ");
    int temp = a + b;
    a = b;
    b = temp;
  }
  print("");
}
