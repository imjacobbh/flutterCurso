import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pagina 02"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Terminos y condiciones',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones. Para usar esta aplicación es necesario que aceptes los terminos y condiciones',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                ElevatedButton(
                    onPressed: () => {Navigator.pop(context)},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        textStyle: TextStyle(color: Colors.white),
                      padding: EdgeInsets.all(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Acepto los terminos y condiciones",
                        ),
                        Icon(Icons.forward)
                      ],
                    ))
              ],
            )));
  }
}
