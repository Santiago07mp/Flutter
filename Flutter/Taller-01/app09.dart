import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  stdout.write("Ingrese su opción (1-3): ");
  int opcion = int.parse(stdin.readLineSync()!);

  double area = 0;
  double perimetro = 0;
  String figura = "";

  switch (opcion) {
    case 1: 
      figura = "Triángulo";
      stdout.write("Ingrese la base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la altura: ");
      double altura = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el lado 1: ");
      double lado1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el lado 2: ");
      double lado2 = double.parse(stdin.readLineSync()!);

      area = (base * altura) / 2;
      perimetro = base + lado1 + lado2;
      break;

    case 2: 
      figura = "Rectángulo";
      stdout.write("Ingrese la base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la altura: ");
      double altura = double.parse(stdin.readLineSync()!);

      area = base * altura;
      perimetro = 2 * (base + altura);
      break;

    case 3: 
      figura = "Círculo";
      stdout.write("Ingrese el radio: ");
      double radio = double.parse(stdin.readLineSync()!);

      area = pi * pow(radio, 2);
      perimetro = 2 * pi * radio;
      break;

    default:
      print("Opción no válida.");
      return;
  }

  if (area <= 0 || perimetro <= 0) {
    print("Error: Área o perímetro no pueden ser menores o iguales a cero.");
  } else {
    print("\nFigura: $figura");
    print("Área: ${area.toStringAsFixed(2)} unidades cuadradas");
    print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
  }
}
