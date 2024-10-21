import 'package:app_vacantes/screens/filtro_screen.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/legal_screen.dart';
import 'package:app_vacantes/screens/leyenda_screen.dart';
import 'package:app_vacantes/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FiltroScreen(),
    HomeScreen(),
    LeyendaScreen(),
  ];
  void _selectedOptionInMyBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onItemTap(int selectedItems) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Consulta"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:
                  "home"), //Al pulsar home entra en bucle y genera otra navbar
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Ayuda",
          )
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _selectedOptionInMyBottomNavigation,
      ),
    );
  }
}
