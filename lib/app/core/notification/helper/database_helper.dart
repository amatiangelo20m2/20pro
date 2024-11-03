import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/notification_entity.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('notifications.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE notifications (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        body TEXT NOT NULL,
        dateReceived TEXT NOT NULL
      )
    ''');
  }

  // Insert a notification
  Future<int> insertNotification(NotificationModel notification) async {
    final db = await instance.database;
    return await db.insert('notifications', notification.toMap());
  }

  // Retrieve all notifications
  Future<List<NotificationModel>> fetchAllNotifications() async {
    final db = await instance.database;
    final result = await db.query('notifications', orderBy: 'dateReceived DESC');

    return result.map((map) => NotificationModel.fromMap(map)).toList();
  }

  // Delete a notification
  Future<int> deleteNotification(int id) async {
    final db = await instance.database;
    return await db.delete(
      'notifications',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
