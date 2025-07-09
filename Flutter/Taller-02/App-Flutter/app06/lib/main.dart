import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FICHA | 2925960", 
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 30, 255),
        title: Text("FICHA | 2925960"), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: aprendices.length, 
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person), 
                title: Text(aprendices[index]), 
              ),
            );
          },
        ),
      ),
    );
  }
}


List<String> aprendices = [
  "Juan Pérez",
  "Ana Gómez",
  "Carlos López",
  "Maria Rodríguez",
  "Luis Martínez",
  "Paula Sánchez",
  "Javier Díaz",
  "Elena Torres",
  "David García",
  "Sofia Martínez",
  "Pedro Hernández",
  "Carmen Ruiz",
  "José Ramírez",
  "Lucía Morales",
  "Raúl Fernández",
  "Sandra Romero",
  "Ricardo López",
  "Isabel Pérez",
  "Antonio García",
  "Marta Sánchez",
  "Fernando Martín",
  "Beatriz González",
  "Eduardo Ruiz",
  "Vanessa Fernández",
  "Miguel Ángel Rodríguez",
  "Laura Jiménez",
  "Raúl García",
  "Cristina Díaz",
  "Fernando López",
  "Adriana Martínez",
  "Víctor Sánchez",
  "Elena Gómez",
  "Iván Pérez",
  "Verónica Torres",
  "Rosa Ruiz",
  "Óscar García",
  "Esteban Martínez",
  "Gabriela Gómez",
  "Samuel Sánchez",
  "Carlos Ramírez",
  "Raquel González",
  "Álvaro Torres",
  "Andrea García",
  "José Luis Martín",
  "Miriam Pérez",
  "Julio Sánchez",
  "Esther López",
  "Carlos Martínez",
  "Cristina Sánchez",
  "Antonio Ramírez",
  "Marta Gómez",
  "Rocío Rodríguez",
  "José Antonio Fernández",
  "Sandra Martínez",
  "Sergio López",
  "Claudia Pérez",
  "Tomás Rodríguez",
  "Juliana García",
  "David Romero",
  "Manuel Díaz",
  "Alicia Sánchez",
  "Alejandro Ramírez",
  "Begoña García",
  "Raúl Sánchez",
  "Clara Fernández",
  "Fernando Rodríguez",
  "José Pérez",
  "María José Martín",
  "Isabel López",
  "José Manuel González",
  "Felipe Ramírez",
  "Alba Martínez",
  "Andrés García",
  "Lidia Rodríguez",
  "José Luis Ramírez",
  "Ricardo Pérez",
  "Verónica Sánchez",
  "David Torres",
  "Susana Martínez",
  "Joaquín Ramírez",
  "Carmen Pérez",
  "Mónica García",
  "Antonio González",
  "Patricia Rodríguez",
  "Cristina Fernández",
  "José María Sánchez",
  "Laura Ramírez",
  "Miguel Sánchez",
  "Esther González",
  "Raquel Pérez",
  "Álvaro Martínez",
  "Inmaculada Ramírez",
  "Elena Pérez",
  "Pedro Rodríguez",
  "Antonio Sánchez",
  "Fabiola Martín"
];
