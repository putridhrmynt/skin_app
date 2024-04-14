import 'package:flutter/foundation.dart';
import 'package:skin_app/dto/products.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  static Database? _db;

  factory DBHelper() => _instance;

  DBHelper._internal();

  Future<Database> get db async {
    _db ??= await initDatabase();
    return _db!;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'db_products.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE products (id INTEGER PRIMARY KEY, name TEXT, detail TEXT)');
  }

  Future<Products> add(Products products) async {
    var dbClient = await db;
    products.id = await dbClient.insert('products', products.toMap());
    return products;
  }

  Future<List<Products>> getProducts() async {
    var dbClient = await db;
    List<Map<String, dynamic>> maps =
        await dbClient.query('products', orderBy: 'id ASC');
    List<Products> products = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        products.add(Products.fromMap(maps[i]));
      }
    }
    return products;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(
      'products',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(Products products) async {
    var dbClient = await db;
    return await dbClient.update(
      'products',
      products.toMap(),
      where: 'id = ?',
      whereArgs: [products.id],
    );
  }

  Future<void> close() async {
    try {
      // Access database client
      var dbClient = await db;
      _db = null;
      await dbClient.close();
    } catch (error) {
      // Handle potential errors during closure
      debugPrint('Error closing database: $error');
    }
  }
}
