// var box= Hive.openBox(mydatabse);

// await box.put('name','niyal');

// var names= box.get('name');

// await box.delete('name');



// Database database=await opendatabase(path, version:1,
//   onCreate(Database db, int version)async{
//     await db.exicute(
//       "CREATE TABLE student (id INT PRIMARY KEY, name TEXT, age int)"
//     );
//   }
// );

// INSERT TABLE student("name, age")VALUES("NIyal",21);

// UPDATE student SET name=?, mark=?,WHERE id=?,
// ['joel', 20,id];


// Database database=await opendatabase(path, version:1,
//   onCreate(Database db, int version)async{
//     await db.exicute(
//       "CREATE TABLE student (id INT PRIMARY KEY, name TEXT, age int)"
//     );
//   }
// );

// onUpgrade(db, newVersion, oldVersion)async{
//    if(oldVersion<2){
//     await db.execute("ALTER TABLE student ADD column fathername TEXT");
//    }
// }
