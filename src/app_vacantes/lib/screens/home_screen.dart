import 'package:app_vacantes/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../scripts/file_reader.dart';

class HomeScreen extends StatelessWidget {

  final bool isCallingFromNavBar;

  const HomeScreen({Key? key, this.isCallingFromNavBar = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void _showMarkerInfo({
      required int idCentro,
      required String nombreCentro,
      required String tipologia,
      required String direccion,
      required String telefono,
      required String? paginaWeb,
    }) {
      // Muestra una tarjeta emergente con información del marcador
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '📖 $nombreCentro',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('$tipologia'),
                SizedBox(height: 4),
                Text('📍 $direccion'),
                SizedBox(height: 4),
                Text('☎️ $telefono'),
                if (paginaWeb != null)
                  TextButton(
                    onPressed: () {
                      // Lógica para abrir la página web
                      // Por ejemplo: launch(paginaWeb); (requiere 'url_launcher' en pubspec.yaml)
                    },
                    child: Text('🌐 Visitar Página Web',
                        style: TextStyle(color: Colors.blue)),
                  ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Cierra la tarjeta emergente
                  },
                  child: Text('Cerrar'),
                ),
              ],
            ),
          );
        },
      );
    }

    Future<List<Marker>> getCentrosMarkets() async {
      // Espera a que se carguen los datos desde el archivo Excel
      var listaDeCentros = await excelToJson('assets/model_excel_app.xlsx');
      List<Marker> markers = [];

      listaDeCentros.forEach((centro) {
        int idCentro = int.parse(centro['id del centro'].toString());
        int curso = int.parse(centro['curso'].toString());
        String nombreCentro = centro['nombre del centro'].toString();
        String tipologia = centro['tipologia'].toString();
        String codigoCentro = centro['código del centro'].toString();
        String tipoCentro = centro['tipo de centro'].toString();
        String direccion = centro['dirección'].toString();
        String localidad = centro['localidad'].toString();
        String provincia = centro['provincia'].toString();
        String municipio = centro['municipio'].toString();
        String codigoMunicipio = centro['código de municipo'].toString();
        int codigoPostal = int.parse(centro['código postal'].toString());

        // Reemplaza la coma por un punto antes de convertir a double
        double latitud =
            double.parse(centro['latitud'].toString().replaceAll(',', '.'));
        double longitud =
            double.parse(centro['longitud'].toString().replaceAll(',', '.'));

        String telefono = centro['teléfono'].toString();
        String correoElectronico = centro['correo electrónico'].toString();
        String? paginaWeb = centro['página web']?.toString();
        String? numeroEstudiantes = centro['nº de estudiantes']?.toString();
        String? servicios = centro['servicios']?.toString();
        String? ampa = centro['AMPA?']?.toString();

        // Agrega un marcador a la lista
        markers.add(Marker(
            point: LatLng(latitud, longitud),
            builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showMarkerInfo(
                      idCentro: idCentro,
                      nombreCentro: nombreCentro,
                      tipologia: tipologia,
                      direccion: direccion,
                      telefono: telefono,
                      paginaWeb: paginaWeb,
                    );
                  },
                  child: Icon(
                    Icons.location_on,
                    color: const Color.fromARGB(255, 255, 0, 0),
                    size: 25,
                  ),
                )));
      });
      return markers;
    }

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: FutureBuilder<List<Marker>>(
              future:
                  getCentrosMarkets(), // Llama a tu función que obtiene los marcadores
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No se encontraron marcadores.'));
                }

                // Si hay datos, usa el MarkerLayer con los marcadores
                return FlutterMap(
              options: MapOptions(
                    center: LatLng(37.18817, -3.60667), // Coordenadas de inicio
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                      urlTemplate:
                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                      markers: snapshot.data!, // Usa los datos obtenidos
                    ),
                  ],
                );
              },
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
      bottomNavigationBar: isCallingFromNavBar == false
          ? HomeNavBar(
              callingScreen: 0,
            )
        : null,
    );
  }
}
