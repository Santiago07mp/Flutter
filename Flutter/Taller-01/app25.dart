import 'dart:io';

void main() {
  print("Llenado y ordenamiento de un vector");

  stdout.write("¿Cuántos elementos desea ingresar? ");
  int x = int.parse(stdin.readLineSync()!);

  if (x <= 0) {
    print("El tamaño del vector debe ser mayor a cero.");
    return;
  }

  List<int> vector = [];

  for (int i = 0; i < x; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    vector.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("¿Desea ordenarlo ascendente o descendente? ");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == "ascendente") {
    vector.sort();
  } else if (orden == "descendente") {
    vector.sort((a, b) => b.compareTo(a));
  } else {
    print("Opción no válida. Se mostrará sin ordenar.");
  }

  print("\nVector resultante:");
  print(vector);
}
