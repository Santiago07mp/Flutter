import 'dart:io';
import 'dart:math';

void main() {
  print("Simulación de sorteo tipo Baloto");

  stdout.write("Presione ENTER para generar 6 números aleatorios entre 1 y 45: ");
  stdin.readLineSync(); 

  Set<int> numeros = {};

  Random random = Random();
  while (numeros.length < 6) {
    int numero = random.nextInt(45) + 1; 
    numeros.add(numero);
  }

  List<int> resultado = numeros.toList()..sort();

  print("Los números seleccionados son: $resultado");
}
