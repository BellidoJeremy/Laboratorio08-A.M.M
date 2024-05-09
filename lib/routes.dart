import 'package:flutter/material.dart';
import 'package:lab08/primera_pantalla.dart';
import 'package:lab08/segunda_pantalla.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => PrimeraPantalla());
      case '/second':
        final args = settings.arguments;
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SegundaPantalla(text: args),
          );
        }
        // Maneja el caso en el que args no sea un String
        // Puedes lanzar una excepción o manejarlo de alguna otra manera según tus necesidades
        // Aquí simplemente mostraremos un mensaje en la consola y navegaremos a una pantalla predeterminada
        print('El argumento no es un String');
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('Error'))));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
