import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DATOS PERSONALES",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green, 
          title: Text("DATOS PERSONALES"),
        ),
        body: Column(
          children: [
            Text("Aprendis: Santiago Moralez"), 
            Icon(Icons.person), 
            Icon(Icons.phone_android), 
            ElevatedButton(
              onPressed: () {
              
              },
              child: Text("Crear"), 
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Editar"),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Enviar"),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey[50],
      ),
    );
  }
}
