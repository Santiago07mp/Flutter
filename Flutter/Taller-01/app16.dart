import 'dart:io';

void main() {
  print(" Serie de Fibonacci");

  stdout.write("¿Cuántos números desea ver de la serie de Fibonacci? ");
  int cantidad = int.parse(stdin.readLineSync()!);

  if (cantidad <= 0) {
    print("Debe ingresar un número mayor a 0.");
    return;
  }

  int a = 0, b = 1;

  print("\nLos primeros $cantidad números de la serie de Fibonacci son:");
  for (int i = 0; i < cantidad; i++) {
    stdout.write("$a ");
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }

  print(""); 
}
