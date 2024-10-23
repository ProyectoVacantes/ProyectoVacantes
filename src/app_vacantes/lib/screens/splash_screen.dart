import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/legal_screen.dart';
import 'package:app_vacantes/scripts/file_reader.dart';

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
    // Espera 1 segundo o carga datos
    await Future.delayed(const Duration(seconds: 3));

    // Navega a la pantalla principal
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.only(
          top: screenHeight * 0.02,
          left: screenWidth * 0.04,
          right: screenWidth * 0.04,
          bottom: screenHeight * 0.02,
        ),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(225, 245, 255, 1.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Busca Aula',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(1, 99, 148, 1),
                fontSize: 80,
                fontFamily: 'MuseoModerno',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
            SizedBox(height: screenHeight * 0.001),
            Container(
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.25),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LegalScreen()),
                );
              },
              child: const Text(
                'Aviso Legal',
                style: TextStyle(
                  color: Color.fromRGBO(116, 207, 252, 1),
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
