import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número (A): ");
  double numeroA = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número (B): ");
  double numeroB = double.parse(stdin.readLineSync()!);

  double suma = numeroA + numeroB;

  print("La suma del número A con el número B es: $suma");
}
