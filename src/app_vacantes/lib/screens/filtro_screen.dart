import 'package:flutter/material.dart';
import 'package:app_vacantes/texts/provincias.dart';

class FiltroScreen extends StatefulWidget {
  const FiltroScreen({super.key});

  @override
  _FiltroScreenState createState() => _FiltroScreenState();
}

class _FiltroScreenState extends State<FiltroScreen> {
  String? _selectedProvince = 'Todas';

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(225, 245, 255, 1.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text(
                'Consulta',
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Curso
              Text(
                'Curso',
                style: TextStyle(
                  fontSize: screenWidth * 0.02,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Cuerpo
              Text(
                'Cuerpo',
                style: TextStyle(
                  fontSize: screenWidth * 0.02,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Especialidad
              Text(
                'Especialidad',
                style: TextStyle(
                  fontSize: screenWidth * 0.02,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Tipo de docente
              Text(
                'Tipo de docente',
                style: TextStyle(
                  fontSize: screenWidth * 0.02,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Provincias
              Text(
                'Provincias',
                style: TextStyle(
                  fontSize: screenWidth * 0.02,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Dropdown de provincias
              DropdownButton<String>(
                value: _selectedProvince,
                items: provincias.map((String province) {
                  return DropdownMenuItem<String>(
                    value: province,
                    child: Text(
                      province,
                      style: TextStyle(fontSize: screenWidth * 0.01),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedProvince = newValue;
                  });
                },
                style: TextStyle(
                  fontSize: screenWidth * 0.01, 
                  color: Colors.black,
                ),
                isExpanded: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
