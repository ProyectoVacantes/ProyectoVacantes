import 'package:app_vacantes/nav_bar.dart';
import 'package:flutter/material.dart';
import 'file_reader.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', //Ruta inicial
      routes: {
        '/': (context) => SplashScreen(), //Ruta para SplashScreen
        '/home': (context) => HomeScreen(), //Ruta para HomeScreen
      },
    );
  }
}
