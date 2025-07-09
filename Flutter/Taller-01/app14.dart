import 'dart:io';

void main() {
  print("Tabla de multiplicar del 1 al 10");

  stdout.write("Ingrese el número para ver su tabla de multiplicar: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("\nTabla del $numero:");
  for (int i = 1; i <= 10; i++) {
    print("$numero x $i = ${numero * i}");
  }
}
