import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/legal_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    //Espera 1 segundos o carga datos
    await Future.delayed(const Duration(seconds: 1));

    //Navega a la pantalla principal
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    //Ancho y alto de la pantalla
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.only(
          top: screenHeight * 0.10,
          left: screenWidth * 0.04,
          right: screenWidth * 0.04,
          bottom: screenHeight * 0.02,
        ),
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Vacantes',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontFamily: 'MuseoModerno',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
            const SizedBox(height: 413),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LegalScreen()),
                );
              },
              child: const Text(
                'Aviso Legal',
                style: TextStyle(
                  color: Color.fromARGB(255, 150, 226, 192),
                  fontSize: 12,
                  fontFamily: 'MuseoModerno',
                  fontWeight: FontWeight.w700,
                  height: 1,
                  letterSpacing: -0.23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
