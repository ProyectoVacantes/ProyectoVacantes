import 'package:app_vacantes/main.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeNavBar>{
  int _SelectedIndex=0;

  static List<Widget> _widgedOptions= <Widget>[
    MyApp(),
    Text("Index 2: Consulta"),
    Text("Index 3: Ayuda")
  ];
  void _selectedOptionInMyBottomNavigation(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text ("Barra de navegación"),
      ),
      body: Center
      (child: _widgedOptions.elementAt(_SelectedIndex),
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.list), label: "Consulta"),
        BottomNavigationBarItem(
          icon: Icon(Icons.help), label: "Ayuda")
      ],
      currentIndex: _SelectedIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      onTap: _selectedOptionInMyBottomNavigation,
      ),
    );
  }
}