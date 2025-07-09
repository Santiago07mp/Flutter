import 'dart:io';
import 'dart:math';

void main() {
  print("Juego de Guayabita");

  stdout.write("Ingrese la cantidad de jugadores: ");
  int cantidadJugadores = int.parse(stdin.readLineSync()!);

  if (cantidadJugadores < 1) {
    print("Debe haber al menos un jugador.");
    return;
  }

  List<String> jugadores = [];
  for (int i = 0; i < cantidadJugadores; i++) {
    stdout.write("Nombre del jugador ${i + 1}: ");
    jugadores.add(stdin.readLineSync()!);
  }

  int acumulado = 0;
  Random random = Random();

  while (acumulado >= 0) {
    bool hayJugadas = false;

    for (var jugador in jugadores) {
      if (acumulado == 0) {
        print("\nEl acumulado es 0. No se puede apostar. Fin del juego.");
        return;
      }

      print("\nAcumulado actual: $acumulado monedas");
      print("Turno de $jugador. Presione ENTER para lanzar el dado...");
      stdin.readLineSync();

      int tiro1 = random.nextInt(6) + 1;
      print("$jugador lanzó un $tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        acumulado += 1;
        print("Perdiste automáticamente. Debes poner una moneda en el acumulado.");
        continue;
      }

      stdout.write("¿Cuánto desea apostar (1 a $acumulado)? ");
      int apuesta = int.parse(stdin.readLineSync()!);

      if (apuesta < 1 || apuesta > acumulado) {
        print("Apuesta inválida. Turno perdido.");
        continue;
      }

      print("Lanzando de nuevo...");
      stdin.readLineSync();
      int tiro2 = random.nextInt(6) + 1;
      print("$jugador lanzó un $tiro2");

      if (tiro2 > tiro1) {
        print("¡Ganaste! Te llevas $apuesta monedas.");
        acumulado -= apuesta;
      } else {
        print("Perdiste. Tu apuesta se suma al acumulado.");
        acumulado += apuesta;
      }

      hayJugadas = true;
    }

    if (!hayJugadas || acumulado <= 0) {
      print("\nEl juego ha terminado. El acumulado es $acumulado monedas.");
      break;
    }
  }
}
