import 'dart:io';

void main() {
  print("Generador de serie par o impar entre dos números");

  stdout.write("Ingrese el primer número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int inicio = num1 < num2 ? num1 : num2;
  int fin = num1 > num2 ? num1 : num2;

  
  stdout.write("¿Desea ver la serie par o impar? (par/impar): ");
  String? tipo = stdin.readLineSync()?.toLowerCase();

  print("\nSerie $tipo desde $inicio hasta $fin:");

  for (int i = inicio; i <= fin; i++) {
    if (tipo == "par" && i % 2 == 0) {
      stdout.write("$i ");
    } else if (tipo == "impar" && i % 2 != 0) {
      stdout.write("$i ");
    }
  }

  print(""); 
}
