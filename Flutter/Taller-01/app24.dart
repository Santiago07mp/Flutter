import 'dart:io';
import 'dart:math';

void main() {
  print("Ejercicios 2.12 al 2.21 con uso de arreglos");

  ejercicio2_12();
  ejercicio2_13();
  ejercicio2_14();
  ejercicio2_15();
  ejercicio2_16();
  ejercicio2_17();
  ejercicio2_18();
  ejercicio2_19();
  ejercicio2_20();
  ejercicio2_21();
}

// 2.12: Lanzamiento de dados (arreglo para guardar los lanzamientos)
void ejercicio2_12() {
  List<List<int>> lanzamientos = [];

  for (int intento = 1; intento <= 3; intento++) {
    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;

    lanzamientos.add([dado1, dado2]);
    print("Lanzamiento $intento: Dado 1 = $dado1, Dado 2 = $dado2");

    if (dado1 != dado2) {
      print("¡Lanza de nuevo!");
      return;
    }
  }

  print("¡Saca una ficha!");
}

// 2.13: Compra con IVA usando arreglo
void ejercicio2_13() {
  List<String> datos = List.filled(4, "");

  stdout.write("Nombre del artículo: ");
  datos[0] = stdin.readLineSync()!;

  stdout.write("Valor unitario: ");
  datos[1] = stdin.readLineSync()!;

  stdout.write("Cantidad: ");
  datos[2] = stdin.readLineSync()!;

  stdout.write("¿Es de la canasta familiar? (si/no): ");
  datos[3] = stdin.readLineSync()!;

  double valorUnit = double.parse(datos[1]);
  int cantidad = int.parse(datos[2]);
  bool conIva = datos[3].toLowerCase() != "si";

  double total = valorUnit * cantidad;
  if (conIva) {
    total *= 1.19;
  }

  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}

// 2.14: Tabla de un número
void ejercicio2_14() {
  stdout.write("Ingrese un número: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> tabla = [];
  for (int i = 1; i <= 10; i++) {
    tabla.add(n * i);
  }

  for (int i = 0; i < tabla.length; i++) {
    print("$n x ${i + 1} = ${tabla[i]}");
  }
}

// 2.15: Todas las tablas del 1 al 10
void ejercicio2_15() {
  List<List<int>> tablas = List.generate(10, (_) => List.filled(10, 0));

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      tablas[i][j] = (i + 1) * (j + 1);
    }
  }

  for (int i = 0; i < 10; i++) {
    print("Tabla del ${i + 1}:");
    for (int j = 0; j < 10; j++) {
      print("${i + 1} x ${j + 1} = ${tablas[i][j]}");
    }
    print("");
  }
}

// 2.16: Serie de Fibonacci con arreglo
void ejercicio2_16() {
  stdout.write("¿Cuántos números desea ver de la serie de Fibonacci? ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> serie = [];

  for (int i = 0; i < cantidad; i++) {
    if (i == 0) {
      serie.add(0);
    } else if (i == 1) {
      serie.add(1);
    } else {
      serie.add(serie[i - 1] + serie[i - 2]);
    }
  }

  print("Serie de Fibonacci: $serie");
}

// 2.17: Factorial usando arreglo
void ejercicio2_17() {
  stdout.write("Ingrese un número entre 0 y 12: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n > 12) {
    print("El factorial es infinito.");
    return;
  }

  List<int> factores = [];
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
    factores.add(i);
  }

  print("Factorial de $n (${factores.join(' x ')}) = $resultado");
}

// 2.18: Ordenamiento de 3 números
void ejercicio2_18() {
  List<int> numeros = [];

  for (int i = 0; i < 3; i++) {
    stdout.write("Ingrese el número ${i + 1}: ");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("¿Desea ordenarlos ascendente o descendente? ");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == "ascendente") {
    numeros.sort();
  } else if (orden == "descendente") {
    numeros.sort((a, b) => b.compareTo(a));
  } else {
    print("Opción no válida.");
    return;
  }

  print("Números ordenados: $numeros");
}

// 2.19: Baloto (números únicos y ordenados)
void ejercicio2_19() {
  Set<int> numeros = {};
  Random random = Random();

  while (numeros.length < 6) {
    numeros.add(random.nextInt(45) + 1);
  }

  List<int> resultado = numeros.toList()..sort();
  print("Números del baloto: $resultado");
}

// 2.20: Descomposición de un número
void ejercicio2_20() {
  stdout.write("Ingrese un número: ");
  String entrada = stdin.readLineSync()!;
  List<String> digitos = entrada.split('');

  print("Dígitos: ${digitos.join(', ')}");
  print("Total de dígitos: ${digitos.length}");
}

// 2.21: Serie par o impar entre dos números
void ejercicio2_21() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("¿Desea ver la serie par o impar? ");
  String tipo = stdin.readLineSync()!.toLowerCase();

  List<int> serie = [];
  for (int i = min(a, b); i <= max(a, b); i++) {
    if (tipo == "par" && i % 2 == 0) {
      serie.add(i);
    } else if (tipo == "impar" && i % 2 != 0) {
      serie.add(i);
    }
  }

  print("Serie $tipo: $serie");
}
