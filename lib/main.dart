import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/models/Gif.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Gif>> _listadoGifs;

  Future<List<Gif>> _getGif() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=TKE3NhlqsXA371U3OsRNpe4mf4yLXvQB&limit=10&rating=g"));
    List<Gif> gifs = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData["data"]) {
        gifs.add(Gif(item["title"], item["images"]["downsized"]["url"]));
      }
      return gifs;
    } else {
      throw Exception("Failed request");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGif();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Material App bar"),
            ),
            body: FutureBuilder(
              future: _listadoGifs,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return GridView.count(
                    crossAxisCount: 2,
                    children: _listGifs(snapshot.data),
                  );
                } else if (snapshot.hasError) {
                  print(snapshot.error);
                  return Text("error");
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )));
  }

  List<Widget> _listGifs(List<Gif>? data) {
    List<Widget> gifs = [];
    if (data == null) return gifs;

    for (var gif in data) {
      gifs.add(Card(
          child: Column(children: [
           Expanded(child: Image.network(gif.url, fit: BoxFit.fill,))
           // Padding(
            //  padding: const EdgeInsets.all(8.0),
             // child: Text(gif.name),
            //)
          ])));
    }
    return gifs;
  }
}
