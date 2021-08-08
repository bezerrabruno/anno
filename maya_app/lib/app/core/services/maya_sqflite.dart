import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'maya.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      //db.execute(TimerDao.tableSql);
    },
    version: 1,
  );
}
