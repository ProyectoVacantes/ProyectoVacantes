import 'package:flutter/material.dart';

class LeyendaScreen extends StatelessWidget {
  const LeyendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(screenWidth * 0.05),
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Row(
              children: [
                Container(
                  width: screenWidth * 0.08, 
                  height: screenWidth * 0.08,
                  color: Colors.red,
                ),
                SizedBox(width: screenWidth * 0.05),
                Flexible(
                  child: Text(
                    'Texto rojo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),

            Row(
              children: [
                Container(
                  width: screenWidth * 0.08,
                  height: screenWidth * 0.08,
                  color: const Color.fromARGB(255, 250, 104, 0),
                ),
                SizedBox(width: screenWidth * 0.05),
                Flexible(
                  child: Text(
                    'Texto naranja',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),

            Row(
              children: [
                Container(
                  width: screenWidth * 0.08,
                  height: screenWidth * 0.08,
                  color: const Color.fromARGB(255, 0, 106, 255),
                ),
                SizedBox(width: screenWidth * 0.05),
                Flexible(
                  child: Text(
                    'Texto azul',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
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
