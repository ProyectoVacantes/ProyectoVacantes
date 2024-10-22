import 'package:app_vacantes/screens/filtro_screen.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/leyenda_screen.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  final int callingScreen; // Se espera un índice para la pantalla inicial

  const HomeNavBar({super.key, required this.callingScreen});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeNavBar> {
  late int _selectedIndex; // Usamos 'late' para inicializar después

  static const List<Widget> _screens = <Widget>[
    HomeScreen(isCallingFromNavBar: true),
    FiltroScreen(),
    LeyendaScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.callingScreen; // Inicializamos el índice
  }

  void _selectedOptionInMyBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index; // Actualizamos el índice seleccionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[_selectedIndex], // Mostramos la pantalla correspondiente
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Consulta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Ayuda",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _selectedOptionInMyBottomNavigation, // Manejador de selección
      ),
    );
  }
}
