import 'dart:io';

void main() {
  print("Cálculo del factorial de un número");

  stdout.write("Ingrese un número entre 0 y 12: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("El número no puede ser negativo.");
  } else if (numero > 12) {
    print("El factorial es infinito (fuera del rango permitido).");
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print("El factorial de $numero es: $factorial");
  }
}
