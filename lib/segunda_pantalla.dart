// second_screen.dart

import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final String text;

  SegundaPantalla({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto de la Primera Pantalla:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              text,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Regresar a la primera pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}
