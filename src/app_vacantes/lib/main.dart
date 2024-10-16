import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/splash_screen.dart';
import 'package:app_vacantes/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => SplashScreen(), // ruta a SplashScreen
        '/home': (context) => HomeScreen(), // ruta a HomeScreen
      },
    );
  }
}