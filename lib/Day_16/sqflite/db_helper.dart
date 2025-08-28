import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/tiket.dart';

class DbHelper {
  static Future<Database> _databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'tiket.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tickets(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, email TEXT, password TEXT,)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerUser(Tiket ticket) async {
    final db = await _databaseHelper();
    await db.insert(
      'tickets',
      ticket.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<Tiket?> loginUser(
    String email,
    String password,
    // String judulFilm,
    // String jumlaTiket,
  ) async {
    final db = await _databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'tickets',
      where:
          'email = ? AND password = ? AND phone = ? AND judulFIlm = ? AND jumlahTiket = ?',
      whereArgs: [email, password,],
    );

    if (results.isNotEmpty) {
      return Tiket.fromMap(results.first);
    }
    return null;
  }

  static Future<int> updateUser(Tiket ticket) async {
    final db = await _databaseHelper();
    return await db.update(
      'tickets',
      ticket.toMap(),
      where: 'id = ?',
      whereArgs: [ticket.id],
    );
  }

  static Future<int> deleteUser(int id) async {
    final db = await _databaseHelper();
    return await db.delete('tickets', where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Tiket>> getAllTickets() async {
    final db = await _databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('tickets');
    return results.map((e) => Tiket.fromMap(e)).toList();
  }
}
