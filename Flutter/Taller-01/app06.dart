import 'dart:io';

void main() {
  stdout.write("Ingrese el número A (numerador): ");
  double numeroA = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el número B (denominador): ");
  double numeroB = double.parse(stdin.readLineSync()!);

  if (numeroB == 0) {
    print("Imposible la división por 0.");
  } else {
    double resultado = numeroA / numeroB;
    print("La división del número A entre el número B es: $resultado");
  }
}
