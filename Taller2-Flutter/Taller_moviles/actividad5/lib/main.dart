import 'dart:js_util';
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
      title: "Informacion Personal",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
          title: Text("Información Personal"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage("https://pbs.twimg.com/profile_images/1475817587485380608/uc51sJEP_400x400.jpg")
              ),
              ListTile(
                title: Text("EDWARD CAMILO"),
                subtitle: Text("Nombres"),
                leading: Icon(Icons.person_pin),
              ),
              Divider(),
              ListTile(
                title: Text("LOZANO PANESSO"),
                subtitle: Text("Apellidos"),
                leading: Icon(Icons.person_4_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("3508018667"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone_android),
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
