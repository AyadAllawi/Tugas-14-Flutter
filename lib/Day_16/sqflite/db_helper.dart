import 'package:path/path.dart';
import 'package:ppkd_batch_3/Day_16/model/tiket.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'tiket.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tickets(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, email TEXT, judulFilm TEXT, jumlahTiket INTEGER)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerTicket(Tiket ticket) async {
    final db = await databaseHelper();
    await db.insert(
      'tickets',
      ticket.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Tiket>> getTickets() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('tickets');
    return results.map((e) => Tiket.fromMap(e)).toList();
  }
}
