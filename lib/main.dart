
import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/1c/02/20/1c022001c80c4d0d2a13da2137ca56ff.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            nombre(),
            const SizedBox(height: 15),
            campoUsuario(),
            campoContrasena(),
            botonEntrar()
          ],
        ),
      ));
}

Widget nombre() {
  return const Text(
    "Sign In",
    style: TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 3),
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Username",
            fillColor: Colors.white, filled: true),
      ));
}

Widget campoContrasena(){
  return Container(
      padding:  EdgeInsets.symmetric(horizontal: 75, vertical: 3),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            fillColor: Colors.white, filled: true),
      ));
}

Widget botonEntrar(){
  return TextButton(
    onPressed: (){},
    child: Text("Enter", style: TextStyle(fontSize: 17),),
    style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50))
  );
}
