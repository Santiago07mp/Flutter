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
        backgroundColor: const Color.fromARGB(255, 255, 0, 234),
        title: Text("FICHA | 2925960"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(aprendices[index]['nombre']), 
            subtitle: Text(aprendices[index]['telefono']), 
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    'nombre': 'Juan Pérez',
    'telefono': '3001234567',
  },
  {
    'nombre': 'Ana Gómez',
    'telefono': '3002345678',
  },
  {
    'nombre': 'Carlos López',
    'telefono': '3003456789',
  },
  {
    'nombre': 'Maria Rodríguez',
    'telefono': '3004567890',
  },
  {
    'nombre': 'Luis Martínez',
    'telefono': '3005678901',
  },
  {
    'nombre': 'Paula Sánchez',
    'telefono': '3006789012',
  },
  {
    'nombre': 'Javier Díaz',
    'telefono': '3007890123',
  },
  {
    'nombre': 'Elena Torres',
    'telefono': '3008901234',
  },
  {
    'nombre': 'David García',
    'telefono': '3009012345',
  },
  {
    'nombre': 'Sofia Martínez',
    'telefono': '3000123456',
  },
  {
    'nombre': 'Pedro Hernández',
    'telefono': '3001234567',
  },
  {
    'nombre': 'Carmen Ruiz',
    'telefono': '3002345678',
  },
  {
    'nombre': 'José Ramírez',
    'telefono': '3003456789',
  },
  {
    'nombre': 'Lucía Morales',
    'telefono': '3004567890',
  },
  {
    'nombre': 'Raúl Fernández',
    'telefono': '3005678901',
  },
  {
    'nombre': 'Sandra Romero',
    'telefono': '3006789012',
  },
  {
    'nombre': 'Ricardo López',
    'telefono': '3007890123',
  },
  {
    'nombre': 'Isabel Pérez',
    'telefono': '3008901234',
  },
  {
    'nombre': 'Antonio García',
    'telefono': '3009012345',
  },
  {
    'nombre': 'Marta Sánchez',
    'telefono': '3000123456',
  },
];
