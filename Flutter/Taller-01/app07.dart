import 'dart:io';

void main() {
  print("Menú de colores:");
  print("1. Amarillo");
  print("2. Azul");
  print("3. Rojo");

  stdout.write("Ingrese el primer número de color (1, 2 o 3): ");
  int color1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número de color (1, 2 o 3): ");
  int color2 = int.parse(stdin.readLineSync()!);

  String resultado;

  if (![1, 2, 3].contains(color1) || ![1, 2, 3].contains(color2)) {
    resultado = "Uno o ambos números están fuera del rango (1 a 3)";
  } else {
    if (color1 == color2) {
      switch (color1) {
        case 1:
          resultado = "Su combinación es: Amarillo";
          break;
        case 2:
          resultado = "Su combinación es: Azul";
          break;
        case 3:
          resultado = "Su combinación es: Rojo";
          break;
        default:
          resultado = "Combinación no válida";
      }
    } else if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
      resultado = "Su combinación es: Verde";
    } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
      resultado = "Su combinación es: Naranja";
    } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
      resultado = "Su combinación es: Violeta";
    } else {
      resultado = "Combinación no reconocida.";
    }
  }

  print(resultado);
}
