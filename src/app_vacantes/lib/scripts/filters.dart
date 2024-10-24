
import 'package:app_vacantes/screens/filtro_screen.dart';

class Filtrado {

static String localizarRuta(){
      const List<String> filtros = [
  "2024-2025",
  "maestros",
  "matematicas",
  "comision de servicios",
  "granada"
];
String ano = filtros[0];
String cuerpo = filtros[1];
String especialidad = filtros[2];
String tipo = filtros[3];
String provincia = filtros[4];
late String anoPath;
late String cuerpoPath;
late String especialidadPath;
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
  switch ("especialidad"){
    case "Administración de empresas P.E.S.":
    especialidadPath = especialidad;
    break;
  }

  String rutaExcel = "assets/model_excel_app.xlsx"; //"$anoPath/$cuerpo/$especialidadPath";
  return rutaExcel;
}
}