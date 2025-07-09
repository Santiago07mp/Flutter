import 'dart:io';
import 'dart:math';

void main() {
  print("===== MENÚ DE OPERACIONES MATEMÁTICAS =====");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo (residuo)");
  print("6. Cuadrado de un número");
  print("7. Raíz cuadrada");
  print("8. Potencia (base^exponente)");
  print("9. Porcentaje");
  print("10. Número aleatorio entre 0 y 100");

  stdout.write("Seleccione una opción (1-10): ");
  int opcion = int.parse(stdin.readLineSync()!);

  double num1 = 0;
  double num2 = 0;

  if (opcion >= 1 && opcion <= 9) {
    stdout.write("Ingrese el primer número: ");
    num1 = double.parse(stdin.readLineSync()!);

    if ([1, 2, 3, 4, 5, 8, 9].contains(opcion)) {
      stdout.write("Ingrese el segundo número: ");
      num2 = double.parse(stdin.readLineSync()!);
    }
  }

  print("\nResultado:");

  switch (opcion) {
    case 1:
      print("Suma: ${num1 + num2}");
      break;
    case 2:
      print("Resta: ${num1 - num2}");
      break;
    case 3:
      print("Multiplicación: ${num1 * num2}");
      break;
    case 4:
      if (num2 != 0) {
        print("División: ${num1 / num2}");
      } else {
        print("Error: División por 0");
      }
      break;
    case 5:
      print("Módulo (residuo): ${num1 % num2}");
      break;
    case 6:
      print("Cuadrado de $num1: ${pow(num1, 2)}");
      break;
    case 7:
      if (num1 >= 0) {
        print("Raíz cuadrada de $num1: ${sqrt(num1)}");
      } else {
        print("Error: No se puede calcular la raíz cuadrada de un número negativo.");
      }
      break;
    case 8:
      print("$num1 ^ $num2 = ${pow(num1, num2)}");
      break;
    case 9:
      print("$num1% de $num2 = ${(num1 / 100) * num2}");
      break;
    case 10:
      Random random = Random();
      print("Número aleatorio entre 0 y 100: ${random.nextInt(101)}");
      break;
    default:
      print("Opción no válida");
  }
}
