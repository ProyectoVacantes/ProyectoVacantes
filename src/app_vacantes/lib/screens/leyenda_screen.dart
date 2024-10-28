import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/legal_screen.dart';
import 'package:app_vacantes/texts/infoText.dart';
import 'package:app_vacantes/texts/FAQfiltro.dart';
import 'package:app_vacantes/texts/FAQcentro.dart';
import 'package:app_vacantes/texts/FAQadjudicaciones.dart';

class LeyendaScreen extends StatefulWidget {
  const LeyendaScreen({super.key});

  @override
  _LeyendaScreenState createState() => _LeyendaScreenState();
}

class _LeyendaScreenState extends State<LeyendaScreen> {
  // Solo se expande una pregunta en el FAQ
  bool isExpandedFiltro = false;
  bool isExpandedCentro = false;
  bool isExpandedAdjudicaciones = false;

  void toggleExpansion(String tile) {
    setState(() {
      if (tile == 'filtro') {
        isExpandedFiltro = !isExpandedFiltro;
        isExpandedCentro = false;
        isExpandedAdjudicaciones = false;
      } else if (tile == 'centro') {
        isExpandedCentro = !isExpandedCentro;
        isExpandedFiltro = false;
        isExpandedAdjudicaciones = false;
      } else if (tile == 'adjudicaciones') {
        isExpandedAdjudicaciones = !isExpandedAdjudicaciones;
        isExpandedFiltro = false;
        isExpandedCentro = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenWidth * 0.02),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(225, 245, 255, 1.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título y logo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leyenda',
                    style: TextStyle(
                      fontSize: screenWidth * 0.03,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MuseoModerno',
                      color: const Color.fromRGBO(1, 99, 148, 1),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.05,
                    height: screenWidth * 0.05,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo1.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.005),

              // Leyenda de colores
              Row(
                children: [
                  Container(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Flexible(
                    child: Text(
                      'Centro de difícil desempeño',
                      style: TextStyle(
                        fontFamily: 'MuseoModerno',
                        color: Color.fromRGBO(1, 99, 148, 1),
                        fontSize: screenWidth * 0.015,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),

              Row(
                children: [
                  Container(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 104, 0),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Flexible(
                    child: Text(
                      'Centro de compensatoria',
                      style: TextStyle(
                        fontFamily: 'MuseoModerno',
                        color: Color.fromRGBO(1, 99, 148, 1),
                        fontSize: screenWidth * 0.015,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),

              Row(
                children: [
                  Container(
                    width: screenWidth * 0.02,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 106, 255),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Flexible(
                    child: Text(
                      'Centro normativo',
                      style: TextStyle(
                        fontFamily: 'MuseoModerno',
                        color: Color.fromRGBO(1, 99, 148, 1),
                        fontSize: screenWidth * 0.015,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),

              // Información
              Text(
                'Información',
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MuseoModerno',
                  color: const Color.fromRGBO(1, 99, 148, 1),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              Center(
                child: Text(
                  infoText,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: screenWidth * 0.015,
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              // FAQ
              Text(
                'FAQ',
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MuseoModerno',
                  color: const Color.fromRGBO(1, 99, 148, 1),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // 1- ¿Cómo filtrar?
              ExpansionTile(
                key: UniqueKey(),
                initiallyExpanded: isExpandedFiltro,
                title: Text(
                  '¿Cómo filtrar?',
                  style: TextStyle(
                    fontFamily: 'MuseoModerno',
                    fontSize: screenWidth * 0.02,
                    color: const Color.fromRGBO(1, 99, 148, 1),
                  ),
                ),
                onExpansionChanged: (isExpanded) => toggleExpansion('filtro'),
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Text(
                      FAQfiltro,
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        height: 1.5,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),

              // 2- ¿Cómo busco un centro?
              ExpansionTile(
                key: UniqueKey(),
                initiallyExpanded: isExpandedCentro,
                title: Text(
                  '¿Cómo busco un centro?',
                  style: TextStyle(
                    fontFamily: 'MuseoModerno',
                    fontSize: screenWidth * 0.02,
                    color: const Color.fromRGBO(1, 99, 148, 1),
                  ),
                ),
                onExpansionChanged: (isExpanded) => toggleExpansion('centro'),
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Text(
                      FAQcentro,
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        height: 1.5,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),

              // 3- ¿Cuándo salen las adjudicaciones?
              ExpansionTile(
                key: UniqueKey(),
                initiallyExpanded: isExpandedAdjudicaciones,
                title: Text(
                  '¿Cuándo salen las adjudicaciones?',
                  style: TextStyle(
                    fontFamily: 'MuseoModerno',
                    fontSize: screenWidth * 0.02,
                    color: const Color.fromRGBO(1, 99, 148, 1),
                  ),
                ),
                onExpansionChanged: (isExpanded) =>
                    toggleExpansion('adjudicaciones'),
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: Text(
                      FAQadjudicaciones,
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        height: 1.5,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.25),

              // Aviso Legal
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LegalScreen()),
                    );
                  },
                  child: const Text(
                    'Aviso Legal',
                    style: TextStyle(
                      color: Color.fromRGBO(1, 99, 148, 1),
                      fontSize: 12,
                      fontFamily: 'MuseoModerno',
                      fontWeight: FontWeight.w700,
                      height: 1,
                      letterSpacing: -0.23,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
