// class Node{
//   String? data;
//   Node? next;
//   Node? previous;
//   Node(this.data);
// }

// class DoublelinkedList{
//   Node? head;
//   void addtoHead(String data){
//     Node newNode=Node(data);
//     if(head==null){
//       head=newNode;
//     }else{
//       Node? current=head;
//       while(current!.next!=null){
//         current=current.next;
//       }
//       current.next=newNode;
//       newNode.previous=current;
//     }
//   }

//   String reverString(){
//     if(head==null){
//       return "";
//     }

//     Node? current=head;
//     while(current!.next!=null){
//       current=current.next;
//     }

//     String revers="";
//     while(current!=null){
//       revers+=current.data!;
//       current=current.previous;
//     }
//     return revers;
//   }
// }

// void main(){
//   String rev="niyal";
//   DoublelinkedList list=DoublelinkedList();
//   for(int i=0;i<rev.length;i++){
//     list.addtoHead(rev[i]);
//   }
//   String reversed=list.reverString();
//   print(reversed);
// }


// void main(){
//   List<int>number=[3,5,34,5,9];
//   int total=sums(number);
//   print(total);
// }

// int sums(List<int>number){
//   if(number.isEmpty){
//     return 0;
//   }
//   return number.first+sums(number.sublist(1));
// }


// void main(){
//   String name="niyal";
//  String rev=reversed(name);
//  print(rev);
// }

// String reversed(String name){
//   if(name.isEmpty||name==1){
//     return name;
//   }

//   return reversed(name.substring(1))+name[0];
// }


// import '../../fulldomain_dart/alldart.dart';

// var box= await Hive.openBox(mybadatbase);

// await box.put('name','niyal');

// var data= box.get('name');

// await box.delete('name');


DataBase dataBase= openDatabase(path, version:1,
  onCreate(Database db, int version)async{
    await db.excutie("CREATE TABLE student(id INT PRIMARY KEY, name TEXT, age INT)");
  }
);

onUpdate(oldVersion, newVersion){
  if(oldVersion<version)async{
await db.excutie("ALTER TABLE STUDENT ADD COLUMN fathername TEXT");
  }
}

