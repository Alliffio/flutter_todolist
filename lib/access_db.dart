import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class AccessDatabase {
  
  //method untuk menyimpan dan membuat database di direktori file
  Future<Database> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'contact.db';
    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    return todoDatabase;
  }

  //method insert data ke db
  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE contact (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT,
        nomor TEXT,
        date TEXT
      )
    ''');
  }
}
