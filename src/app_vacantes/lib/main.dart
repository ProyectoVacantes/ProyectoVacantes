import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/legal_screen.dart';
import 'package:app_vacantes/screens/main_screen.dart'; // Importa la nueva MainScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProyectoVacantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => const MainScreen(), // Nueva pantalla principal
        '/home': (context) => const HomeScreen(), // Ruta para HomeScreen
        '/legal': (context) => const LegalScreen(), // Ruta para LegalScreen
      },
      /* La aplicación cargará la nueva pantalla de inicio principal
      (MainScreen) cuando se inicie.*/
      /* Desde MainScreen, puedes navegar a la pantalla HomeScreen al presionar
      el botón "Comenzar", y a la pantalla LegalScreen al presionar el tecto
      "Aviso Legal".*/
    );
  }
}

