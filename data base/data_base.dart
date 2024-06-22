//hive

// void main()async{
//   await Hive.initFlutter();
//   runApp(myApp());
// }

// var box= Hive.openBox('myBox');

// await box.put('name', 'niyal');
// await box.put('age', '27');

// var name =box.get('name');
// var age= box.get('age');

// await box.delete('name');


//sqflite

// Database database = await opendatabase(path, version: 1,
//   onCreate(Database db, int version)async{
//     await db.exicute(
//       'CREATE TABLE  student ( id INT PRIMARY KEY, name TEXT, mark INT)'
//     );
//   }
// );


// INSERT INTO student('name', 'mark')VALUES('niyal', 21);

// UPDATE student SET name=?, mark=?, WHERE id=?,
// ['niyal jacob', 200, id];

// SELETE * FROM student;

// DELETE FROM student WHERE name='';

// Database database =await opendatabase(path, version:1,
//   onCreate: (Database db, int version)async{
//     await db.execute("CREATE TABLE student(id INT PRIMARY KEY, name TEXT, mark INT)");
//   }
// );
// onUpgrade:(db, newVersion, oldVersion)async{
//   if(oldVersion<2){
//     await db.execute("ALTER TABLE student ADD COLUMN fathersname TEXT");
//   }
// }












