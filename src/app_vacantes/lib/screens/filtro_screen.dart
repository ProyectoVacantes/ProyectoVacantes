import 'package:app_vacantes/scripts/file_reader.dart';
import 'package:flutter/material.dart';
import 'package:app_vacantes/texts/provincias.dart';
import 'package:app_vacantes/texts/cuerpos.dart';
import 'package:app_vacantes/texts/especialidadmaestros.dart';
import 'package:app_vacantes/texts/especialidadsecundaria.dart';
import 'package:app_vacantes/texts/especialidadfp.dart';
import 'package:app_vacantes/texts/especialidadmaestroartes.dart';
import 'package:app_vacantes/texts/especialidadeoi.dart';
import 'package:app_vacantes/texts/especialidadmusica.dart';
import 'package:app_vacantes/texts/especialidadarte.dart';
import 'package:app_vacantes/scripts/filters.dart';

class FiltroScreen extends StatefulWidget {
  const FiltroScreen({Key? key}) : super(key: key);

  @override
  FiltroScreenState createState() => FiltroScreenState();
}

class FiltroScreenState extends State<FiltroScreen> {
  String? _selectedProvince ;
  String? _selectedCuerpo;
  final TextEditingController _searchController = TextEditingController();
  String _hintText = 'Buscar...';
  String? _selectedCurso ;

  List<String> _selectedEspecialidades = [];
  List<String> _currentEspecialidades = [];

  void _updateEspecialidades(String? selectedCuerpo) {
    if (selectedCuerpo == 'Maestros') {
      _currentEspecialidades = especialidadmaestros;
    } else if (selectedCuerpo == 'Profesores de Secundaria') {
      _currentEspecialidades = especialidadsecundaria;
    } else if (selectedCuerpo == 'Profesores de EOI') {
      _currentEspecialidades = especialidadeoi;
    } else if (selectedCuerpo == 'Maestros de Taller de Artes Plásticas y Diseño') {
      _currentEspecialidades = especialidadmaestroartes;
    } else if (selectedCuerpo == 'Maestros de música y artes escénicas') {
      _currentEspecialidades = especialidadmusica;
    } else if (selectedCuerpo == 'Profesores de Artes Plásticas y Diseño') {
      _currentEspecialidades = especialidadarte;
    } else if (selectedCuerpo == 'Profesores Técnicos de FP') {
      _currentEspecialidades = especialidadfp;
    } else {
      _currentEspecialidades = [];
    }
    _selectedEspecialidades.clear();
  }

  Map<String, dynamic> obtenerFiltrosAplicados() {
    return  {
      'curso': _selectedCurso,
      'cuerpo': _selectedCuerpo,
      'especialidades': _selectedEspecialidades,
      'provincia': _selectedProvince,
    };
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
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

                // Barra de búsqueda
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (text) {
                      setState(() {
                        _hintText = text.isNotEmpty ? '' : 'Buscar...';
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

                SizedBox(height: screenHeight * 0.02),

                // Curso
                Text(
                  'Curso',
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Seleccionar el curso
                Column(
                  children: ['2022-2023', '2023-2024', '2024-2025'].map((String curso) {
                    return RadioListTile<String>(
                      title: Text(
                        curso,
                        style: TextStyle(fontSize: screenWidth * 0.015),
                      ),
                      value: curso,
                      groupValue: _selectedCurso,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedCurso = value!;
                        });
                      },
                      activeColor: Colors.blue,
                    );
                  }).toList(),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Cuerpo
                Text(
                  'Cuerpo',
                  style: TextStyle(fontSize: screenWidth * 0.02),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Seleccionar cuerpo
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
                      items: [
                        DropdownMenuItem<String>(
                          value: null,
                          child: Text(
                            'Selecciona uno',
                            style: TextStyle(
                              fontSize: screenWidth * 0.015,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        ...cuerpos.map((String cuerpo) {
                          return DropdownMenuItem<String>(
                            value: cuerpo,
                            child: Text(
                              cuerpo,
                              style: TextStyle(fontSize: screenWidth * 0.015),
                            ),
                          );
                        }).toList(),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCuerpo = newValue;
                          _updateEspecialidades(newValue);
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
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontFamily: 'MuseoModerno',
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Seleccionar especialidad
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxHeight: screenHeight * 0.3,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: _currentEspecialidades.map((String especialidad) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.05,
                                height: screenWidth * 0.05,
                                child: Checkbox(
                                  value: _selectedEspecialidades.contains(especialidad),
                                  onChanged: (bool? selected) {
                                    setState(() {
                                      if (selected == true) {
                                        if (_selectedEspecialidades.length < 2) {
                                          _selectedEspecialidades.add(especialidad);
                                        }
                                      } else {
                                        _selectedEspecialidades.remove(especialidad);
                                      }
                                          });
                                        },
                                        activeColor: const Color.fromARGB(255, 115, 188, 247),
                                        checkColor: const Color.fromARGB(255, 1, 129, 152),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        especialidad,
                                        style: TextStyle(fontSize: screenWidth * 0.015),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),

                SizedBox(height: screenHeight * 0.02),

                // Provincias
                Text(
                  'Provincias',
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontFamily: 'MuseoModerno',
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Seleccionar provincias
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
                          _selectedProvince = newValue ?? 'Todas';
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

                // Botón para aplicar filtros
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                    Map<String, dynamic> filtrosAplicados = obtenerFiltrosAplicados();
                    var resultado = Filtrado.obtenerResultados(filtrosAplicados);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.015,
                      ),
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.018,
                        fontFamily: 'MuseoModerno'
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Aplicar Filtros'),
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

