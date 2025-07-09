import 'dart:io';

void main() {
  print("Organización de tres números");

  stdout.write("Ingrese el primer número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el tercer número: ");
  int num3 = int.parse(stdin.readLineSync()!);

  stdout.write("¿Cómo desea ordenarlos? (ascendente/descendente): ");
  String? orden = stdin.readLineSync()?.toLowerCase();

  List<int> numeros = [num1, num2, num3];

  if (orden == "ascendente") {
    numeros.sort(); 
    print("Números ordenados de forma ascendente: $numeros");
  } else if (orden == "descendente") {
    numeros.sort((a, b) => b.compareTo(a)); 
    print("Números ordenados de forma descendente: $numeros");
  } else {
    print("Opción no válida. Por favor escriba 'ascendente' o 'descendente'.");
  }
}
