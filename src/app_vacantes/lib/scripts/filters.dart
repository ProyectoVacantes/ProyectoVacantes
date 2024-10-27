
import 'package:app_vacantes/screens/filtro_screen.dart';
import 'package:app_vacantes/scripts/file_reader.dart';

class Filtrado {

static String localizarRuta(Map<String,dynamic> consulta){
      var ano = consulta["curso"];
      var cuerpo = consulta["cuerpo"];

late String anoPath;
late String cuerpoPath;

  switch (ano){
    case "2022-2023":
      anoPath = ano;
      break;
    case "2023-2024":
      anoPath = ano;
      break;
     case "2024-2025":
      anoPath = ano;
      break;
  }
  switch (cuerpo){
    case "maestros":
    cuerpoPath = cuerpo;
    print("$cuerpo");
    break;
    case "Profesores de secundaria":
    cuerpoPath = cuerpo;
    break;
    case "Profesores Técnicos de FP":
    cuerpoPath = cuerpo;
    break;
    case "Profesores de Escuelas Oficiales de Idiomas":
    cuerpoPath = cuerpo;
    break;
    case "Profesores de Música y Artes Escénicas":
    cuerpoPath = cuerpo;
    break;
    case "Profesores de Artes Plásticas y Diseño":
    cuerpoPath = cuerpo;
    break;
    case "Maestros de Taller de Artes Plásticas y Diseño":
    cuerpoPath = cuerpo;
    break;
  }
  String rutaExcel = "assets/model_excel_app.xlsx"; //"$anoPath/$cuerpo/$especialidadPath";
  return rutaExcel;
}
  static Future<List<Map<String, dynamic>>> obtenerResultados(Map<String, dynamic> consulta) async {

  var Ruta = Filtrado.localizarRuta(consulta);
  var Excel = await excelToJson(Ruta);
  var especialidad = consulta['especialidades'];
  var provincia = consulta['provincia'];

  List<Map<String, dynamic>> coincidenciasEspecialidad = obtenerCoincidencias(Excel, 'especialidad', especialidad);

  List<Map<String, dynamic>> coincidencias = obtenerCoincidenciasProvincias(coincidenciasEspecialidad, 'provincia', provincia);

  /*for (var centro in coincidencias) {
    print(centro);
    
  }*/
  
  return coincidencias;
}

static List<Map<String, dynamic>> obtenerCoincidencias(List<Map<String, dynamic>> lista, String clave, dynamic valor) {
  List<Map<String, dynamic>> resultados = [];
  
  for (var item in lista) {
    String bobo = valor.toString();
    String result = bobo.replaceAll("[", "").replaceAll("]", "");
    if (item[clave] == result) {
      resultados.add(item);
    }
  }

  return resultados;
}

static List<Map<String, dynamic>> obtenerCoincidenciasProvincias(List<Map<String, dynamic>> lista, String clave, dynamic valor) {
  List<Map<String, dynamic>> resultados = [];
  
  for (var item in lista) {
    String bobo = valor.toString();
    String result = bobo.replaceAll("[", "").replaceAll("]", "");
    if (item[clave] == result) {
      resultados.add(item);
    }
  }

  return resultados;
}

}