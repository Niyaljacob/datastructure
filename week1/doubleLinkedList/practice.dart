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


// DataBase dataBase= openDatabase(path, version:1,
//   onCreate(Database db, int version)async{
//     await db.excutie("CREATE TABLE student(id INT PRIMARY KEY, name TEXT, age INT)");
//   }
// );

// onUpdate(oldVersion, newVersion){
//   if(oldVersion<version)async{
// await db.excutie("ALTER TABLE STUDENT ADD COLUMN fathername TEXT");
//   }
// }


// import 'dart:convert';
// String jsondata='{"name","niyal"}';
// Map<String, dynamic>data=jsonDecode(jsondata());



// import 'dart:convert';
// Map<String, dynamic>data={"niyal":"name"};
// String jsondata=jsonEncode(data);


// Future<void>fetchdat()async{
//   final data=await http.get(Uri.parse('uri'));

//   if(statusCode==200){
//     print(data.body);
//   }else{
//     print(data.statusCode);
//   }
// }


// Future<void>fetchdata()async{
//   final data= await http.put(Uri.parse('uri'));

//   body:{'key':'value'};
//   if(statusCode==200){
//     print(data.body);
//   }else{
//     print(data.statuscode);
//   }
// }


// void main(){
//   List<int>number=[4,2,6,5,4,3];
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
//   String name='';
//   String res=rev(name);
//   print(res);
//   if(name==res){
//     print('palin');
//   }else{
//     print('not');
//   }
// }

// String rev(String name){
//   if(name.isEmpty){
//     return "";

//   }

//   return rev(name.substring(1))+name[0];
// }


// class Node{
//   int? data;
//   Node? next;
//   Node? previous;
//   Node(this.data);
// }

// class DoubleLinkedList{
//   Node? head;
//   void addtoHead(int data){
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

//   void delete(int dataToDelete){
//     if(head==null){
//       return;
//     }if(head!.data==dataToDelete){
//       head=head!.next;
//       return;
//     }
//     Node? current=head;
//     while(current!=null){
//       if(current.data==dataToDelete){
//         current.previous!.next=current.next;
//         if(current.next!=null){
//           current.next!.previous=current.previous;
//         }
//         return;
//       }
//       current=current.next;
//     }
//   }

//   void printNodes(){
//     Node? current=head;
//     while(current!=null){
//       print(current.data);
//       current=current.next;
//     }
    
//   }
// }
// void main()
// {
//   DoubleLinkedList list=DoubleLinkedList();
//   list.addtoHead(10);
//   list.addtoHead(20);
//   list.addtoHead(30);
//   list.delete(20);
//   list.printNodes();
// }


// void main(){
//   int age=10;
//   String result=age>=18? 'you are voter':'u are not';
//   print(result);
// }

void main(){
  List<int>number=[8,3,2,1,30];
  // number.forEach((numbers)=>print(numbers));
  for(int a in number){
    print(a);
  }

  
}