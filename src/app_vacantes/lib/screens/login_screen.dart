import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double responsiveFontSize = screenWidth * 0.08;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 245, 255, 1.0),
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
            Hero(
              tag: 'logotxt',
              child: Text(
                'Busca Aula',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(1, 99, 148, 1),
                  fontSize: responsiveFontSize,
                  fontFamily: 'MuseoModerno',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
            const SizedBox(height: 10),

            Hero(
              tag: 'logoimg',
              child: SizedBox(
                width: screenWidth * 0.25,
                height: screenWidth * 0.25,
                child: Image(
                  image: AssetImage('assets/logo1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 100),

            // Botón login
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: screenHeight * 0.02,
                ),
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.018,
                  fontFamily: 'MuseoModerno',
                  color: Color.fromRGBO(1, 99, 148, 1),
                ),
                backgroundColor: const Color.fromARGB(255, 128, 208, 249),
              ),
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 20),

            // Botón invitado
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: screenHeight * 0.02,
                ),
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.018,
                  fontFamily: 'MuseoModerno',
                  color: Color.fromRGBO(1, 99, 148, 1),
                ),
                backgroundColor: const Color.fromARGB(255, 128, 208, 249),
              ),
              child: const Text('Invitado'),
            ),
          ],
        ),
      ),
    );
  }
}
