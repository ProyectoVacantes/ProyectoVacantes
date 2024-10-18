import 'package:flutter/material.dart';

class LeyendaScreen extends StatelessWidget {
  const LeyendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leyenda'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: const Center(
          child: Text('Pantalla de leyenda'),
        ),
      ),
    );
  }
}