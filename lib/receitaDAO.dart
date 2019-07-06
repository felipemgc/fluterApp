import 'package:flutter_app/receita.dart';
import 'package:flutter_app/helper.dart';
import 'package:sqflite/sqflite.dart';

class ReceitaDAO {
  Future<List<Receita>> get() async {
    Database db = await DBHelper().database;

    final List<Map<String, dynamic>> maps = await db.query('receita');
    var receita = List.generate(maps.length, (i) {
      return Receita.fromJson(maps[i]);
    });
    return receita;
  }

  Future<void> insert({Receita receita}) async {
    Database db = await DBHelper().database;

    await db.insert('receita', receita.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> update(Receita receita) async {
    Database db = await DBHelper().database;

    await db.update('receita', receita.toJson(),
        where: "id = ?", whereArgs: [receita.id]);
  }

  Future<void> delete(int id) async {
    Database db = await DBHelper().database;

    await db.delete('receita', where: "id = ?", whereArgs: [id]);
  }
}
