void main() {
  print("TODAS LAS TABLAS DE MULTIPLICAR DEL 1 AL 10\n");

  for (int i = 1; i <= 10; i++) {
    print("Tabla del $i");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print(""); 
  }
}
