import 'dart:io';
import 'dart:math';

void main() {
  print("=== CÁLCULOS DE UN CILINDRO CON TAPA ===");

  stdout.write("Ingrese el radio del cilindro: ");
  double radio = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del cilindro: ");
  double altura = double.parse(stdin.readLineSync()!);

  if (radio <= 0 || altura <= 0) {
    print("Error: El radio y la altura deben ser mayores a cero.");
    return;
  }

  double areaLateral = 2 * pi * radio * altura;
  double areaBases = 2 * pi * pow(radio, 2); 
  double areaTotal = areaLateral + areaBases;

  double perimetroBase = 2 * pi * radio; 
  double volumen = pi * pow(radio, 2) * altura;

  print("\n=== Resultados ===");
  print("Área total (con tapa): ${areaTotal.toStringAsFixed(2)} unidades cuadradas");
  print("Perímetro de la base: ${perimetroBase.toStringAsFixed(2)} unidades");
  print("Volumen: ${volumen.toStringAsFixed(2)} unidades cúbicas");
}
