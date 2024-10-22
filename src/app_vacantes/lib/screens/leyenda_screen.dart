import 'package:flutter/material.dart';

class LeyendaScreen extends StatelessWidget {
  const LeyendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(screenWidth * 0.02),
        decoration: const BoxDecoration(color: Color.fromRGBO(225, 245, 255, 1.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Leyenda',
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MuseoModerno',
                    color: Color.fromRGBO(1, 99, 148, 1),
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

            Row(
              children: [
                Container(
                  width: screenWidth * 0.02,
                  height: screenWidth * 0.02,
                  color: Colors.red,
                ),
                SizedBox(width: screenWidth * 0.01),
                Flexible(
                  child: Text(
                    'Texto rojo',
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
                  color: const Color.fromARGB(255, 250, 104, 0),
                ),
                SizedBox(width: screenWidth * 0.01),
                Flexible(
                  child: Text(
                    'Texto naranja',
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
                  color: const Color.fromARGB(255, 0, 106, 255),
                ),
                SizedBox(width: screenWidth * 0.01),
                Flexible(
                  child: Text(
                    'Texto azul',
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
            Text(
              'Información',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.bold,
                fontFamily: 'MuseoModerno',
                color: Color.fromRGBO(1, 99, 148, 1),
              ),
            ),

            SizedBox(height: screenHeight * 0.04),
            
            Text(
              'FAQ',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.bold,
                fontFamily: 'MuseoModerno',
                color: Color.fromRGBO(1, 99, 148, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
