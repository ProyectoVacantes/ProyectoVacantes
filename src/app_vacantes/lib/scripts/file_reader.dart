import 'dart:io';
import 'package:excel/excel.dart';

void excel_file_reader(String filepath) {

  // getting file
  // var file = "../../data/testing_data_set.xlsx";
  var file = filepath;
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);

  /// reading excel file values
  for (var table in excel.tables.keys) {
    print(table);
    print(excel.tables[table]!.maxColumns);
    print(excel.tables[table]!.maxRows);
    for (var row in excel.tables[table]!.rows) {
      print("${row.map((e) => e?.value)}");
    }
  }
}