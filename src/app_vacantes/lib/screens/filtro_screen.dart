import 'package:flutter/material.dart';
import 'package:app_vacantes/texts/provincias.dart';
import 'package:app_vacantes/texts/cuerpos.dart';

class FiltroScreen extends StatefulWidget {
  const FiltroScreen({super.key});

  @override
  _FiltroScreenState createState() => _FiltroScreenState();
}

class _FiltroScreenState extends State<FiltroScreen> {
  String? _selectedProvince = 'Todas';
  String? _selectedCuerpo = 'Todos';
  TextEditingController _searchController = TextEditingController();
  String _hintText = "Busca tu centro";
  
  String _selectedCurso = '2024-2025';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    fontFamily: 'MuseoModerno',
                    color: const Color.fromRGBO(1, 99, 148, 1),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (text) {
                      setState(() {
                        _hintText = text.isNotEmpty ? '' : 'Busca tu centro';
                      });
                    },
                    decoration: InputDecoration(
                      hintText: _hintText,
                      hintStyle: TextStyle(
                        fontSize: screenWidth * 0.015,
                        fontFamily: 'MuseoModerno',
                        color: Colors.grey,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: screenWidth * 0.05,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.015,
                        horizontal: screenWidth * 0.05,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),

                // Curso
                Text(
                  'Curso',
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontFamily: 'MuseoModerno',
                    ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Radio Buttons para seleccionar Curso
                Row(
                  children: [
                    Radio<String>(
                      value: '2022-2023',
                      groupValue: _selectedCurso,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedCurso = value!;
                        });
                      },
                    ),
                    Text(
                      '2022-2023',
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        fontFamily: 'MuseoModerno',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Radio<String>(
                      value: '2023-2024',
                      groupValue: _selectedCurso,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedCurso = value!;
                        });
                      },
                    ),
                    Text(
                      '2023-2024',
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        fontFamily: 'MuseoModerno',
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Radio<String>(
                      value: '2024-2025',
                      groupValue: _selectedCurso,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedCurso = value!;
                        });
                      },
                    ),
                    Text(
                      '2024-2025',
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        fontFamily: 'MuseoModerno',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),

                // Cuerpo
                Text(
                  'Cuerpo',
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontFamily: 'MuseoModerno',
                    ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: _selectedCuerpo,
                      items: cuerpos.map((String cuerpo) {
                        return DropdownMenuItem<String>(
                          value: cuerpo,
                          child: Text(
                            cuerpo,
                            style: TextStyle(fontSize: screenWidth * 0.015),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCuerpo = newValue;
                        });
                      },
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        color: Colors.black,
                      ),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      menuMaxHeight: screenHeight * 0.4,
                      decoration: InputDecoration.collapsed(hintText: ''),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Especialidad
                Text(
                  'Especialidad',
                  style: TextStyle(fontSize: screenWidth * 0.02),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Tipo de docente
                Text(
                  'Tipo de docente',
                  style: TextStyle(fontSize: screenWidth * 0.02),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Provincias
                Text(
                  'Provincias',
                  style: TextStyle(fontSize: screenWidth * 0.02),
                ),
                SizedBox(height: screenHeight * 0.02),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: _selectedProvince,
                      items: provincias.map((String province) {
                        return DropdownMenuItem<String>(
                          value: province,
                          child: Text(
                            province,
                            style: TextStyle(fontSize: screenWidth * 0.015),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedProvince = newValue;
                        });
                      },
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        color: Colors.black,
                      ),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      menuMaxHeight: screenHeight * 0.4,
                      decoration: InputDecoration.collapsed(hintText: ''),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
