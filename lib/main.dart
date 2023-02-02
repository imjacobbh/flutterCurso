import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/pages/PaginaHome.dart';
import 'package:untitled/pages/PaginaUsers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _cambiarContainer() {
    final random = Random();
    _width = random.nextInt(350).toDouble();
    _height = random.nextInt(350).toDouble();
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(20).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Material App bar"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                  child: AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(seconds: 1),
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                        color: _color, borderRadius: _borderRadius),
                  ),
                )),
                ElevatedButton(
                    onPressed: _cambiarContainer,
                    child: Text("Cambiar Container"))
              ],
            )));
  }
}
