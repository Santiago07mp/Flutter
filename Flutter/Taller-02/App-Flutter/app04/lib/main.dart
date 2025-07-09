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
      title: "Información Personal",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 14, 0, 0),
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          title: Text("Información Personal"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage("./assets/img/img01.jpeg")
              ),
              ListTile(
                title: Text("Santiago"),
                subtitle: Text("Nombres"),
                leading: Icon(Icons.face_3_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("Moralez"),
                subtitle: Text("Apellidos"),
                leading: Icon(Icons.computer),
              ),
              Divider(),
              ListTile(
                title: Text("1234554321"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone),
              ),
              Divider(),
              ListTile(
                title: Text("DISTRITO CAPITAL"),
                subtitle: Text("Regional"),
                leading: Icon(Icons.location_city),
              ),
              Divider(),
              ListTile(
                title: Text("CEET"),
                subtitle: Text("Centro de Formación"),
                leading: Icon(Icons.location_on),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}