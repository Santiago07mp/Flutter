void main() {

  const String nombre = "Santiago Moralez";
  const String sexo = "Masculino";
  const int edad = 18;
  const double salario = 1500.75;
  const bool tieneVehiculo = true;

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
