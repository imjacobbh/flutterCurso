import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Persona> _personas = [
    Persona("Jose", "Ramos", "+52 449-279-6244"),
    Persona("Carlos", "Lozano", "+52 392-109-11"),
    Persona("Emiliano", "Gonzalez", "+52 445-109-11"),
    Persona("Victoria", "Herrera", "+52 953-439-11")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Material App bar"),
          ),
          body: ListView.builder(
              itemCount: _personas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      _personas[index].name + ' ' + _personas[index].lastname),
                  subtitle: Text(_personas[index].phone),
                  leading: CircleAvatar(
                    child: Text(_personas[index].name.substring(0, 1)),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onLongPress: () {
                    _borrarPersona(context, _personas[index]);
                  },
                );
              })),
    );
  }

  _borrarPersona(context, persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("¿Eliminar contacto?"),
              content: Text(
                  "¿Está seguro de querer eliminar a " + persona.name + "?"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancelar")),
                TextButton(
                    onPressed: () {
                      _personas.remove(persona);
                      setState(() {

                      });
                      Navigator.pop(context);
                    },
                    child: Text("Eliminar", style: TextStyle(color: Colors.red),))
              ],
            ));
  }
}

class Persona {
  late String name;
  late String lastname;
  late String phone;

  Persona(this.name, this.lastname, this.phone);
}
