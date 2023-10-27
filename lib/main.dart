import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventana Modal Ejemplo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible:
                  false, // Evita que se cierre al hacer clic fuera
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Inicio de Sesión'),
                  content: Container(
                    width: 300,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Usuario'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(labelText: 'Contraseña'),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Guardar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Abrir el formulario'),
        ),
      ),
    );
  }
}
