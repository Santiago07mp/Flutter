import 'dart:io';

void main() {
  List<List<String>> productos = [
    ['1', 'Pan', '2000', 'no'],
    ['2', 'Leche', '4500', 'no'],
    ['3', 'Arroz', '3000', 'no'],
    ['4', 'Chocolate', '2500', 'sí'],
    ['5', 'Huevos', '6000', 'no'],
    ['6', 'Jabón', '3800', 'sí'],
    ['7', 'Cepillo', '7000', 'sí'],
    ['8', 'Sal', '1000', 'no'],
    ['9', 'Papel Higiénico', '5500', 'sí'],
    ['10', 'Gaseosa', '3700', 'sí'],
  ];

  List<List<String>> factura = []; 
  int item = 1;

  bool seguir = true;
  while (seguir && item <= 10) {
    stdout.write("Ingrese el ID del producto que desea llevar: ");
    String idBuscado = stdin.readLineSync()!;

    var producto = productos.firstWhere(
      (p) => p[0] == idBuscado,
      orElse: () => [],
    );

    if (producto.isEmpty) {
      print("Producto no encontrado.");
      continue;
    }

    stdout.write("Ingrese la cantidad que desea llevar: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    String nombre = producto[1];
    double valorUnidad = double.parse(producto[2]);
    bool tieneIVA = producto[3].toLowerCase() == 'sí';
    double subtotal = valorUnidad * cantidad;
    double iva = tieneIVA ? subtotal * 0.19 : 0.0;
    double total = subtotal + iva;

    factura.add([
      item.toString(),
      idBuscado,
      nombre,
      cantidad.toString(),
      valorUnidad.toStringAsFixed(2),
      iva.toStringAsFixed(2),
      total.toStringAsFixed(2),
    ]);

    item++;

    if (item <= 10) {
      stdout.write("¿Desea llevar otro producto? (si/no): ");
      String? respuesta = stdin.readLineSync();
      if (respuesta?.toLowerCase() != 'si') {
        seguir = false;
      }
    } else {
      print("Ha alcanzado el máximo de 10 productos.");
    }
  }

  print("\n========== FACTURA ==========");
  print(
      "Ítem | ID | Producto         | Cant | Valor U | IVA     | Total");
  print("-------------------------------------------------------------");

  double totalFinal = 0;
  for (var fila in factura) {
    totalFinal += double.parse(fila[6]);
    print("${fila[0].padRight(5)}| "
        "${fila[1].padRight(2)} | "
        "${fila[2].padRight(15)}| "
        "${fila[3].padRight(4)} | "
        "\$${fila[4].padLeft(7)} | "
        "\$${fila[5].padLeft(6)} | "
        "\$${fila[6].padLeft(7)}");
  }

  print("-------------------------------------------------------------");
  print("TOTAL A PAGAR: \$${totalFinal.toStringAsFixed(2)}");
}
