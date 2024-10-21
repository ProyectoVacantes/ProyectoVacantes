import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/texts/legal_text.dart';

class LegalScreen extends StatefulWidget {
  const LegalScreen({Key? key}) : super(key: key);

  @override
  _LegalScreenState createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  @override
  void initState() {
    super.initState();
    _closeScreenAfterDelay();
  }

  void _closeScreenAfterDelay() async {
    await Future.delayed(const Duration(seconds: 5));
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

    return Scaffold(
        body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SingleChildScrollView(
            child: Center(
              child: Text(
                legalText,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: screenWidth * 0.015,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

