import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtTelefono = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFechaInscripcion = TextEditingController();
final txtFoto = TextEditingController();
final txtColorDistintivo = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
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
        title: Text("Aprendices"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(aprendices[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(aprendices[index]["nombre"]),
                      backgroundColor: aprendices[index]["color_distintivo"],
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(aprendices[index]["foto"]),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Teléfono: ${aprendices[index]["telefono"]}",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Ubicación: ${aprendices[index]["ubicacion"]}",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Fecha de inscripción: ${aprendices[index]["fecha_inscripcion"]}",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Scaffold(
                  appBar: AppBar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    title: Text("Nuevo Aprendiz"),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: txtNombre,
                            decoration: InputDecoration(
                              labelText: "Nombre",
                              hintText: "Nombre del aprendiz",
                              icon: Icon(Icons.person),
                            ),
                          ),
                          TextFormField(
                            controller: txtTelefono,
                            decoration: InputDecoration(
                              labelText: "Teléfono",
                              hintText: "Número de teléfono",
                              icon: Icon(Icons.phone),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          TextFormField(
                            controller: txtUbicacion,
                            decoration: InputDecoration(
                              labelText: "Ubicación",
                              hintText: "Ubicación del aprendiz",
                              icon: Icon(Icons.location_on),
                            ),
                          ),
                          TextFormField(
                            controller: txtFechaInscripcion,
                            decoration: InputDecoration(
                              labelText: "Fecha de inscripción",
                              hintText: "Fecha de inscripción (YYYY-MM-DD)",
                              icon: Icon(Icons.date_range),
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                          TextFormField(
                            controller: txtFoto,
                            decoration: InputDecoration(
                              labelText: "Foto",
                              hintText: "URL de la fotografía",
                              icon: Icon(Icons.image),
                            ),
                            keyboardType: TextInputType.url,
                          ),
                          TextFormField(
                            controller: txtColorDistintivo,
                            decoration: InputDecoration(
                              labelText: "Color distintivo",
                              hintText: "Color que identifica al aprendiz",
                              icon: Icon(Icons.color_lens),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    onPressed: () {
                      if (txtNombre.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! El nombre del aprendiz está vacío"),
                        ));
                      } else {
                        // Aquí podrías agregar lógica para guardar el nuevo aprendiz
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                              "Se ha guardado satisfactoriamente el aprendiz: ${txtNombre.text}"),
                        ));
                      }
                    },
                    child: Icon(Icons.save),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.account_circle),
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "AMAYA MARTINEZ FABIAN YESID",
    "telefono": "573195638261",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.red,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "BELTRAN BUSTOS JULIAN DANIEL",
    "telefono": "3226607792",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blue,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "BORDA ARDILA RONNY",
    "telefono": "3219759220",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "CADENA QUINTERO ALAN JAIR",
    "telefono": "5714886956",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.orange,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "CAMACHO FERRUCHO CARLOS EDUARDO",
    "telefono": "3143808047",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.teal,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "CASTAÑEDA LEIVA BRAYAN DAVID",
    "telefono": "3013237460",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.yellow,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "CORDOBA MALDONADO NICOL DAYANA",
    "telefono": "573053677841",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyan,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "CRUZ FIGUEROA OSCAR MAURICIO",
    "telefono": "3227813912",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purple,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "CUIDA ESQUIVEL SAMUEL",
    "telefono": "3054302025",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.brown,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "DAZA CAMACHO JOSE DAVID",
    "telefono": "3143688476",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.indigo,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "ESPITIA ARENAS MAICOL STIVEN",
    "telefono": "3123767034",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "FERNANDEZ VALLEJO SHARON TATIANA",
    "telefono": "3227658431",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amber,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "HERRERA MATEUS BRAYAN STIVEN",
    "telefono": "3132860500",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.lime,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "LONDOÑO CARVAJAL JUAN ESTEBAN",
    "telefono": "3505112026",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.greenAccent,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "LOZANO PANESSO EDWARD CAMILO",
    "telefono": "3041381520",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purpleAccent,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "MADRIGAL TIQUE JOHAN SNEIDER",
    "telefono": "3001597024",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.redAccent,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "MELO CANO CRISTIAN CAMILO",
    "telefono": "3112850538",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.orangeAccent,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "MENESES PARRA DAVID LEONARDO",
    "telefono": "3138292531",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueAccent,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "MIRANDA MORENO JOHAN DANIEL",
    "telefono": "3202564149",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyanAccent,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "MONTEALEGRE SANCHEZ KEVIN SANTIAGO",
    "telefono": "3209188193",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.tealAccent,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "MONZON AMORTEGUI CRISTIAN DAVID",
    "telefono": "3107883038",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.limeAccent,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "MORALEZ PACHON DAVID SANTIAGO",
    "telefono": "3116658577",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pinkAccent,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "PACHECO RUEDA KEVIN LEONARDO",
    "telefono": "3156406251",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amberAccent,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "PINZON HERNANDEZ VALENTINA",
    "telefono": "3115918301",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.deepOrange,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "TORRES TORRES MIGUEL ANGEL",
    "telefono": "3135562730",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.deepPurple,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "TUNJANO CORREA MIGUEL ANGEL",
    "telefono": "3125918289",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueGrey,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
  {
    "nombre": "VALBUENA MANCERA DIEGO ALEJANDRO",
    "telefono": "3016875644",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purple,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfA8VOIlDkMZ5maZJRBm3P6MrMtOoavuMTA&s",
  },
  {
    "nombre": "VASQUEZ PRADA JOHN MICHAEL",
    "telefono": "3123503334",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://pbs.twimg.com/media/GFGal_3WwAAdhk8.jpg:large",
  },
  {
    "nombre": "VILLAZON MONTERO MARIA ALEJANDRA",
    "telefono": "3172897823",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.teal,
    "foto": "https://pbs.twimg.com/media/FMZUS3HXwAECrW3.jpg:large",
  },
  {
    "nombre": "ZABALETA CALDERON JOSE DAVID",
    "telefono": "3235995105",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto": "https://pbs.twimg.com/media/GS8cdd6XQAANC5y.jpg",
  },
];
