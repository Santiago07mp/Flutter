import 'dart:io';

void main() {
  print("Descomposición de número y conteo de dígitos");

  stdout.write("Ingrese un número entero positivo: ");
  String entrada = stdin.readLineSync()!;

  if (!RegExp(r'^\d+$').hasMatch(entrada)) {
    print("Entrada no válida. Debe ser un número entero positivo.");
    return;
  }

  int numero = int.parse(entrada);
  List<String> digitos = entrada.split('');

  print("\nEl número ingresado fue: $numero");
  print("Dígitos descompuestos: ${digitos.join(', ')}");
  print("Cantidad de dígitos: ${digitos.length}");
}
