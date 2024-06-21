// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// Future<Database> openDatabase() async {
//   return await openDatabase(
//     join(await getDatabasesPath(), 'test_database.db'),
//     version: 2, // Increment the version number
//     onCreate: (db, version) async {
//       // Create the table when the database is first created
//       await db.execute(
//         'CREATE TABLE Test(id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)',
//       );
//     },
//     onUpgrade: (db, oldVersion, newVersion) async {
//       if (oldVersion < 2) {
//         // Add a new column description during upgrade
//         await db.execute('ALTER TABLE Test ADD COLUMN description TEXT');
//       }
//     },
//   );
// }

// Future<void> insertData() async {
//   final db = await openDatabase();
  
//   await db.transaction((txn) async {
//     // Insert a new record with the new column
//     int id1 = await txn.rawInsert(
//         'INSERT INTO Test(name, value, num, description) VALUES("some name", 1234, 456.789, "Sample description")');
//     print('Inserted first record with ID: $id1');

//     int id2 = await txn.rawInsert(
//         'INSERT INTO Test(name, value, num, description) VALUES(?, ?, ?, ?)',
//         ['another name', 12345678, 3.1416, 'Another description']);
//     print('Inserted second record with ID: $id2');
//   });
// }

// void main() async {
//   await openDatabase();
//   await insertData();
// }
