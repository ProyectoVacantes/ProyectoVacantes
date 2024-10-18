import 'package:app_vacantes/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(37.18817, -3.60667), //Coordenadas de inicio
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: screenWidth * 0.1,
                      height: screenWidth * 0.1,
                      point: LatLng(37.18817, -3.60667),
                      builder: (ctx) => Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: screenWidth * 0.02, 
                      ), //icono de ejemplo
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.02,
            right: screenWidth * 0.02,
            child: Text(
              '© OpenStreetMap contributors',
              style: TextStyle(
                color: const Color.fromARGB(255, 61, 61, 61),
                fontSize: screenWidth * 0.008,
              ),
            ),
          ),
        ],
      ),
     bottomNavigationBar: HomeNavBar(),
    );
  }
}
