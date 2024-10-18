<<<<<<< HEAD
=======
import 'package:app_vacantes/widgets/nav_bar.dart';
>>>>>>> 6b98f9264c19b4a50eaed772e4a5002498e0d68c
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/splash_screen.dart';
import 'package:flutter/material.dart';


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
        '/': (context) => const SplashScreen(), //Ruta para SplashScreen
        '/home': (context) => const HomeScreen(), //Ruta para HomeScreen
      },
    );
  }
}
