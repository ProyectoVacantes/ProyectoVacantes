import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF49BB88)),
        child: const Center(
          child: Text('Pantalla inicial'),
        ),
      ),
    );
  }
}