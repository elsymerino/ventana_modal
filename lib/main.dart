import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.pink, // Cambio de color del fondo
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Registrarse',
                            style: TextStyle(
                              color: Colors.white, // Cambio de color del texto
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Usuario',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Correo',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Número de Teléfono',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Agrega la lógica para guardar los datos
                              Navigator.of(context).pop();
                            },
                            child: Text('Guardar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Registrarse'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.blue, // Cambio de color del fondo
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Inicio de Sesión',
                            style: TextStyle(
                              color: Colors.white, // Cambio de color del texto
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Usuario',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              filled: true,
                              fillColor: Colors
                                  .white, // Cambio de color del fondo del campo de texto
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Agrega la lógica para guardar los datos
                              Navigator.of(context).pop();
                            },
                            child: Text('Guardar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
