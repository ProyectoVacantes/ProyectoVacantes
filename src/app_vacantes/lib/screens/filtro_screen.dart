import 'package:flutter/material.dart';

class FiltroScreen extends StatelessWidget {
  const FiltroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtro'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: const Center(
          child: Text('Pantalla de filtro'),
        ),
      ),
    );
  }
}