void main() {
  List<int> vector = [];

  for (int i = 0; i < 10; i++) {
    vector.add(i + 1); // Llenamos con valores del 1 al 10
  }

  for (int i = 0; i < vector.length; i++) {
    print("Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}");
  }
}
