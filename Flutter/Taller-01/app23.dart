import 'dart:io';

void main() {
  List<String> encabezados = ["Nombre", "Apellido", "Edad", "Estado", "Teléfono"];

  List<List<String>> datos = List.generate(4, (_) => List.filled(5, ""));

  print("Ingrese los datos de 4 compañeros:\n");

  for (int i = 0; i < 4; i++) {
    print("Registro ${i + 1}:");
    for (int j = 0; j < 5; j++) {
      stdout.write("${encabezados[j]}: ");
      datos[i][j] = stdin.readLineSync()!;
    }
    print(""); 
  }

  print("Datos ingresados:\n");

  for (var encabezado in encabezados) {
    stdout.write("${encabezado.padRight(15)}");
  }
  print("");

  for (var fila in datos) {
    for (var valor in fila) {
      stdout.write("${valor.padRight(15)}");
    }
    print("");
  }
}
