import 'package:flutter/material.dart';
import 'package:app_vacantes/screens/home_screen.dart';
import 'package:app_vacantes/screens/legal_screen.dart';
import 'package:app_vacantes/scripts/file_reader.dart'; // Asegúrate de que este archivo contenga la función para leer Excel

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  /* Utilizar el widget StatelessWidget ya que no necesitamos manejar un estado complicado
  en la primera pantalla.*/

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    /* Utilizamos MediaQuery para adaptar el tamaño de los elementos a diferentes tamaños
    de pantalla.*/

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(225, 245, 255, 1.0), // Color de fondo
        ),
        /* El Container ocupa todo el ancho y alto de la pantalla. Se le aplica un color de fondo
      suave (BoxDecoration).*/
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra el contenido verticalmente
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centra el contenido horizontalmente
          /* El Column tiene las propiedades mainAxisAlignment: MainAxisAlignment.center y 
        crossAxisAlignment: CrossAxisAlignment.center para centrar todos los elementos tanto 
        vertical como horizontalmente.*/
          children: [
            // Título
            const Text(
              'Busca Aula',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(1, 99, 148, 1),
                fontSize: 75,
                fontFamily: 'MuseoModerno',
                fontWeight: FontWeight.w600,
              ),
            ),

            // Espaciador entre el título y la imagen
            SizedBox(height: screenHeight * 0.05),

            // Imagen centrada
            Container(
              width: screenWidth * 0.2, // Ajusta el tamaño de la imagen
              height: screenWidth * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo1.png'),
                  fit: BoxFit.contain, // Ajusta la imagen al contenedor
                ),
              ),
            ),

            // Espaciador entre la imagen y el botón
            SizedBox(height: screenHeight * 0.05),

            // Botón de "Comenzar búsqueda"
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
                // El ElevatedButton que navega a la pantalla HomeScreen al presionarlo.
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.15,
                  vertical: screenHeight * 0.02,
                ),
                // El botón tiene un padding amplio para hacer clic más fácilmente.
                backgroundColor:
                    const Color.fromRGBO(1, 99, 148, 1), // Color del botón
              ),
              child: const Text(
                'Comenzar búsqueda',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            // Espaciador entre el botón y el texto del Aviso Legal
            SizedBox(height: screenHeight * 0.05),

            // Texto que actúa como botón ("Aviso Legal")
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LegalScreen()),
                );
                /* El texto "Aviso Legal" es un GestureDetector, lo que le da funcionalidad
                de botón para navegar a LegalScreen al ser clicado.*/
              },
              child: const Text(
                'Aviso Legal',
                style: TextStyle(
                  color: Color.fromRGBO(116, 207, 252, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline, // Subraya el texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
