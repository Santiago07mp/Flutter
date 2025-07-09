import 'dart:io';
import 'dart:math';

void main() {
  print("¿Cómo desea ingresar los datos?");
  print("1. Por lados");
  print("2. Por ángulos");

  stdout.write("Ingrese su opción (1 o 2): ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    stdout.write("Ingrese el lado A: ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el lado B: ");
    double b = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el lado C: ");
    double c = double.parse(stdin.readLineSync()!);

    if (a <= 0 || b <= 0 || c <= 0) {
      print("Error: Los lados deben ser mayores a cero.");
      return;
    }

    List<double> lados = [a, b, c]..sort();
    if (lados[0] + lados[1] <= lados[2]) {
      print("No es un triángulo válido. La suma de dos lados debe ser mayor al tercero.");
      return;
    }

    String tipoLado;
    if (a == b && b == c) {
      tipoLado = "Equilátero";
    } else if (a == b || a == c || b == c) {
      tipoLado = "Isósceles";
    } else {
      tipoLado = "Escaleno";
    }

    double anguloC = acos((pow(a, 2) + pow(b, 2) - pow(c, 2)) / (2 * a * b)) * (180 / pi);

    String tipoAngulo;
    if (anguloC == 90) {
      tipoAngulo = "Rectángulo";
    } else if (anguloC < 90) {
      tipoAngulo = "Acutángulo";
    } else {
      tipoAngulo = "Obtusángulo";
    }

    print("\nEl triángulo es: $tipoLado y $tipoAngulo");

  } else if (opcion == 2) {
    stdout.write("Ingrese el ángulo A: ");
    double angA = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el ángulo B: ");
    double angB = double.parse(stdin.readLineSync()!);
    stdout.write("Ingrese el ángulo C: ");
    double angC = double.parse(stdin.readLineSync()!);

    if (angA <= 0 || angB <= 0 || angC <= 0) {
      print("Error: Los ángulos deben ser mayores a cero.");
      return;
    }

    if ((angA + angB + angC).round() != 180) {
      print("La suma de los ángulos no es igual a 180°. No es un triángulo válido.");
      return;
    }

    String tipoAngulo;
    if (angA == 90 || angB == 90 || angC == 90) {
      tipoAngulo = "Rectángulo";
    } else if (angA < 90 && angB < 90 && angC < 90) {
      tipoAngulo = "Acutángulo";
    } else {
      tipoAngulo = "Obtusángulo";
    }

    String tipoLado;
    if (angA == angB && angB == angC) {
      tipoLado = "Equilátero";
    } else if (angA == angB || angA == angC || angB == angC) {
      tipoLado = "Isósceles";
    } else {
      tipoLado = "Escaleno";
    }

    print("\nEl triángulo es: $tipoLado y $tipoAngulo");

  } else {
    print("Opción inválida.");
  }
}
