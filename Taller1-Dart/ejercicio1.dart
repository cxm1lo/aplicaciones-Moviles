void main() {
  const String nombre = "Juan Pérez";
  const String sexo = "Masculino";
  const int edad = 30;
  const double salario = 2500.75;
  const bool tieneVehiculo = true;

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  // ignore: dead_code
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
