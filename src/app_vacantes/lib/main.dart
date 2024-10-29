import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
