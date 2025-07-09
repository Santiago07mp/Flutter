import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA | 2925960",
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
        backgroundColor: const Color.fromARGB(255, 250, 2, 2),
        foregroundColor: Colors.white,
        title: Text("FICHA | 292590"), 
      ),
      body: ListView.builder(
        itemCount: aprendices.length, 
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.arrow_circle_right_outlined),
            leading: CircleAvatar(
              backgroundColor: Color(aprendices[index]['color']),
              backgroundImage: NetworkImage(aprendices[index]['foto']),
            ),
            title: Text(aprendices[index]['nombre']),
            subtitle: Text(aprendices[index]['telefono']),
            onTap: () {

              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Color(aprendices[index]['color']),
                      title: Text(aprendices[index]['nombre']),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        children: [
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(aprendices[index]['foto']), 
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Descripción: ${aprendices[index]['descripcion']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider(),
                          Text(
                            'Teléfono: ${aprendices[index]['telefono']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider(),
                          Text(
                            'Ubicación: ${aprendices[index]['ubicacion']}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}


List<Map<String, dynamic>> aprendices = [
  {
    'nombre': 'Santiago Moralez',
    'telefono': '1234554321',
    'color': 0xFF4CAF50, 
    'foto': 'https://www.example.com/santiago_moralez.jpg', 
    'descripcion': 'Estudiante de desarrollo de aplicaciones móviles.',
    'ubicacion': 'Bogota, Colombia',
  },
  {
    'nombre': 'Ana Gómez',
    'telefono': '3002345678',
    'color': 0xFF2196F3, 
    'foto': 'https://www.example.com/ana_gomez.jpg', 
    'descripcion': 'Estudiante de diseño gráfico y desarrollo web.',
    'ubicacion': 'Bogotá, Colombia',
  },
  {
    'nombre': 'Carlos López',
    'telefono': '3003456789',
    'color': 0xFFF44336,
    'foto': 'https://www.example.com/carlos_lopez.jpg',
    'descripcion': 'Estudiante de redes y comunicaciones.',
    'ubicacion': 'Cali, Colombia',
  },
  {
    'nombre': 'Maria Rodríguez',
    'telefono': '3004567890',
    'color': 0xFFFFC107,
    'foto': 'https://www.example.com/maria_rodriguez.jpg',
    'descripcion': 'Estudiante de marketing digital.',
    'ubicacion': 'Barranquilla, Colombia',
  },
  {
    'nombre': 'Luis Martínez',
    'telefono': '3005678901',
    'color': 0xFF9C27B0,
    'foto': 'https://www.example.com/luis_martinez.jpg',
    'descripcion': 'Estudiante de análisis de datos y estadística.',
    'ubicacion': 'Medellín, Colombia',
  },
];
