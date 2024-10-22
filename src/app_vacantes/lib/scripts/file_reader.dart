import 'dart:typed_data'; // Asegúrate de importar este paquete
import 'package:flutter/services.dart' show rootBundle;
import 'package:excel/excel.dart';

Future<List<Map<String, dynamic>>> excelToJson(String assetPath) async {
  // Cargar el archivo desde los activos
  ByteData data = await rootBundle.load(assetPath);
  List<int> bytes = data.buffer.asUint8List();
  
  var excel = Excel.decodeBytes(bytes);
  List<Map<String, dynamic>> excelData = [];

  for (var table in excel.tables.keys) {
    var headers = excel.tables[table]!.rows[0]; // Usar la primera fila como cabeceras

    for (var i = 1; i < excel.tables[table]!.rows.length; i++) {
      var row = excel.tables[table]!.rows[i];
      Map<String, dynamic> rowData = {};
      
      for (var j = 0; j < headers.length; j++) {
        var header = headers[j]?.value.toString() ?? 'Column$j'; // Asignar un nombre por defecto
        var value = row[j]?.value; // Obtener el valor de la celda

        if (value is String || value is num) {
          rowData[header] = value; // Usar el valor directamente si es String o num
        } else {
          rowData[header] = value.toString(); // Convertir a String para otros tipos
        }
      }
      excelData.add(rowData);
    }
  }
  
  return excelData; // Retornar los datos como una lista de mapas
}
