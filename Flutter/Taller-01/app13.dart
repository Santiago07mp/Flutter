import 'dart:io';

void main() {
  print("Cálculo de compra con IVA si aplica");

  stdout.write("Ingrese el nombre del artículo: ");
  String? articulo = stdin.readLineSync();

  stdout.write("Ingrese el valor unitario del artículo: ");
  double valorUnidad = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad a llevar: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  stdout.write("¿El artículo pertenece a la canasta familiar? (si/no): ");
  String? esCanasta = stdin.readLineSync();

  double subtotal = valorUnidad * cantidad;
  double totalFinal;

  if (esCanasta?.toLowerCase() == "si") {
    totalFinal = subtotal;
  } else {
    totalFinal = subtotal * 1.19; 
  }

  print("\n RESUMEN DE COMPRA");
  print("Artículo: $articulo");
  print("Valor unitario: \$${valorUnidad.toStringAsFixed(2)}");
  print("Cantidad: $cantidad");
  print("Subtotal: \$${subtotal.toStringAsFixed(2)}");

  if (esCanasta?.toLowerCase() == "si") {
    print("Producto exento de IVA por pertenecer a la canasta familiar.");
  } else {
    print("IVA aplicado (19%).");
  }

  print("Total a pagar: \$${totalFinal.toStringAsFixed(2)}");
}
