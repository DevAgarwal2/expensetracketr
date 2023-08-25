//amount,id,month,year,title
import "package:sqflite/sqflite.dart";
import "package:path_provider/path_provider.dart";
import "package:path/path.dart";

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directior = await getApplicationDocumentsDirectory();
    var path = join(directior.path, "myDb");
    var database =
        await openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }

  Future<void> createDatabase(Database database, int version) async {
    String sql2 =
        "Create TABLE SAVING(id INTEGER PRIMARY KEY ,title TEXT,year TEXT,month TEXT,amount INTEGER)";
    String sql =
        "Create TABLE EXPENSE(id INTEGER PRIMARY KEY,title TEXT,year TEXT,month TEXT,amount INTEGER)";
    await database.execute(sql);
    await database.execute(sql2);
  }
}
