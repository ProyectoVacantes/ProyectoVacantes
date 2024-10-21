import 'package:flutter/material.dart';

//pantalla para info, leyenda y FAQ

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
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
                      color: Colors.white,
                      fontSize: screenWidth * 0.015,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

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
                      color: Colors.white,
                      fontSize: screenWidth * 0.015,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

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
                      color: Colors.white,
                      fontSize: screenWidth * 0.015,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
