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
  int _paginaActual = 0;

  List<Widget> _paginas = [PaginaHome(), PaginaUsers()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Material App bar"),
          ),
          body: _paginas[_paginaActual],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle_sharp),
                  label: "contacts")
            ],
          ),
        ));
  }
}
