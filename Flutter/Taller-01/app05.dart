import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número (A): ");
  double numeroA = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número (B): ");
  double numeroB = double.parse(stdin.readLineSync()!);

  double producto = numeroA * numeroB;

  print("El producto del número A con el número B es: $producto");
}
