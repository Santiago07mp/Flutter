import 'dart:math';

void main() {
  print("Juego Parqués");

  int intentos = 0;
  int maxIntentos = 3;
  bool sacarFicha = false;

  while (intentos < maxIntentos) {
    intentos++;

    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;

    print("\nLanzamiento $intentos: Dado 1 = $dado1, Dado 2 = $dado2");

    if (dado1 == dado2) {
      if (intentos < maxIntentos) {
        print("Par iguales Lanzar de nuevo");
      } else {
        print("Saca una ficha");
        sacarFicha = true;
        break;
      }
    } else {
      print("Lanza de nuevo");
      break;
    }
  }

  if (sacarFicha && intentos == maxIntentos) {
    print("Fin del turno.");
  }
}
