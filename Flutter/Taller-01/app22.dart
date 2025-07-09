import 'dart:io';

void main() {
  print("Llenado e impresión de un vector de 10 posiciones");

  List<int> vector = List.filled(10, 0); 

  for (int i = 0; i < vector.length; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    vector[i] = int.parse(stdin.readLineSync()!);
  }

  print("\nContenido del vector:");
  for (int i = 0; i < vector.length; i++) {
    print("Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}");
  }
}
