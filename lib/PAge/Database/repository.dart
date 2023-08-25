import 'package:expensetracketr/PAge/Database/connection.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class ExpenseRepository{
  late DatabaseConnection _connection;
  ExpenseRepository(){
    _connection = DatabaseConnection();

  }
  static Database? _database;
  Future<Database?> get myDatabase async{
    if(_database != null){
      return _database;
    }
    else{
      _database = await _connection.setDatabase();
      return _database;
    }

  }
  //Insert Data
  insertData(table,data)async{
    var connection = await myDatabase;
    return connection?.insert(table, data);
  }
  //Read Single Data
  readSingledata(table,itemId)async{
    var connection = await myDatabase;
    return connection?.query(table,where: 'id=?',whereArgs: ["itemId"]);
  }
  //Read all dat
  readAllData(table)async{
    var connection = await myDatabase;
    return connection?.query(table);
  }

  //update data
  updateData(table,data,id)async{
    var connection = await myDatabase;
    return connection?.update(table, data,where: "id=?",whereArgs: [id]);
  }
  deleteData(table,id)async{
    var connection = await myDatabase;
    return connection?.delete(table,where: "id=?",whereArgs: [id]);
  }
}