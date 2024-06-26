// void main(){
//   int age=23;
//   String result=age>=18? 'eligible':'not eligible';
//   print(result);
// }

// void main(){
//   int age =23;
//   if(age>=18){
//     print('eligible');
//   }else{
//     print('not');
//   }
// }


// void main(){
//   int day=3;
//   if(day==1){
//     print('mon');

//   }else if(day==2){
//     print('tues');
//   }else if(day==3){
//     print('wed');
//   }
// }

// void main(){
//   for(int i=0;i<=10;i++){
//     print('niyal');
//   }
// }


// void main(){
//   int i=0;
//   while(i<=10){
//     print(i);
//     i++;
//   }
// }

// void main(){
//   int i=1;
//   do{
//     print(i);
//     i++;
//   }while(i<=10);
// }


// void main(){
//   List<String>name=['niyal','joel', 'akhil' ];
//   name.forEach((names)=>print(names));
// }

// void main(){
  
// List<String>name=['niyal','joel', 'akhil' ];
// for(String names in name){
//   print(names);
// }
// }

// void main(){
//  name();
// }

// void name(){
//   print('niyal');
// }

// void main(){
// sums(10, 20);
// }

// void sums(int i, int j){
//   int sum=i+j;
//   print(sum);
// }


// void main(){
// print(total());
// }

// String total(){
//   return "niyal";
// }


// void main(){
//   int result=total(20, 30);
//   print(result);
// }
// int total(int a, int b){
//   int sum=a+b;
//   return sum;
// }

// void main(){
//   int result=total(20, 30);
//   print(result);
// }
// int total(int a, int b)=>a+b;


// void main(){
//  name('niyal', 'joel');
// }
// void name(String a, String b){
//   print("names $a, $b");
// }

// void main(){
//  name('niyal', 'joel');
// }
// void name(String a, String b, [String c='hello']){
//   print("$c names $a, $b");
// }

// void main(){
//  name(a: 'niyal', b: 'joel');
// }
// void name({String? a, String? b}){
//   print(" names $a, $b");
// }

// void main(){
//  name(a: 'niyal', b: 'joel');
// }
// void name({required String a,required String b}){
// //   print(" names $a, $b");
// // }

// void main(){
//  name( 'niyal','joel');
//  name( 'a', 'b','hello');
// }
// void name(String a, String b,[String? title]){
//   print(" names $a, $b, $title");
// }


// void main(){
//   String name="niyal";
//   String rev=name.split('').reversed.join();
//   print(rev);
// }

// class Student {
//   String? name;
//   int? age;
//   int? rollNumber;

//   // Constructor
//   Student({ this.name, this. age, this.rollNumber});
//   void display(){
//     print("Name: ${name}");
//     print("Age: ${age}");
//     print("Roll Number: ${rollNumber}");
//   }
// }

// void main(){
//     // Here student is object of class Student. 
//     Student student = Student(name: "John", age: 20, rollNumber: 1);
//     student.display();
// }



// void main(){
//   List<int>number=[8,3,4,2,1];
//   int total=sums(number);
//   print(total);
// }

// int sums(List<int> number){
//   if(number.isEmpty){
//     return 0;
//   }

//   return number.first+sums(number.sublist(1));
// }

class name{
  String? a;
  String? b;
  name(this.a, this.b);

  void display(){
    print(a);
    print(b);
  }

}
void main(){
  name('a', 'b')
  ..display();
}
