// class Stack{
//  List<int>stack=[];

//  void push(int value){
//   stack.add(value);
//  }

//  int pop(){
//   while(stack.isEmpty){
//     throw Exception(" the list is emprt");
//   }return stack.removeLast();
//  }

//  int peek(){
//   while(stack.isEmpty){
//     throw Exception("the list is empty");
//   }return stack.last;
//  }

//  bool isEmpty(){
//   return stack.isEmpty;
//  }

//  int length(){
//   while(stack.isEmpty){
//     throw Exception(" the list is empty");
//   }return stack.length;
//  }
// }

// void main(){
//   Stack stack =Stack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   print("orginal stack ${stack.stack}");

//   print({"last elemet in the list ${stack.peek()}"});
//   print("the length of the list ${stack.length()}");
//  while(!stack.isEmpty()){
//   print(stack.pop());
//  }
// }


// class Stack{
//  List<int>stack=[];

//  void push(int value){
//   stack.add(value);
//  }

//  int pop(){
//   while(stack.isEmpty){
//     throw Exception(" the list is emprt");
//   }return stack.removeLast();
//  }

//  int peek(){
//   while(stack.isEmpty){
//     throw Exception("the list is empty");
//   }return stack.last;
//  }

//  bool isEmpty(){
//   return stack.isEmpty;
//  }

// void delete(int datatodelete){
//   List<int>temp=[];
//   while(!stack.isEmpty&&peek()!=datatodelete){
//     temp.add(pop());
//   }
//   if(!isEmpty()){
//     pop();
//   }
//   if(temp.isNotEmpty){
//     push(temp.removeLast());
//   }
// }
// }

// void main(){
//   Stack stack =Stack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   print("orginal stack ${stack.stack}");

//   print({"last elemet in the list ${stack.peek()}"});

//    stack.delete(3);
//   print("deleted stack ${stack.stack}");

//  while(!stack.isEmpty()){
//   print(stack.pop());
//  }
// }


// class Stack{
//  List<String>stack=[];

//   void push(String value) {
//     stack.add(value);
//   }

//  String pop(){
//   while(stack.isEmpty){
//     throw Exception(" the list is emprt");
//   }return stack.removeLast();
//  }

//  bool isEmpty(){
//   return stack.isEmpty;
//  }

// }

// String reverse(String input){
//  Stack stack =Stack();
//  for(int i=0; i<input.length;i++){
//   stack.push(input[i]);
//  }
// String reversedString = "";
//   while (!stack.isEmpty()) {
//     reversedString += stack.pop();
//   }

//   return reversedString;
// }

// void main(){
// String originalString ="Heloo Niyal";
// String reversedString=reverse(originalString);
// print("orginal string $originalString");
// print("reversed String $reversedString");

// }





class Stack{
  List<String>stack=[];
  void push(String value){
    stack.add(value);
  }
  String pop(){
    while(stack.isEmpty){
      throw Exception("the list is empty");
    }return stack.removeLast();
  }


  bool isEmpty(){
    return stack.isEmpty;
  }

}

String reverse(String input){
  Stack stack=Stack();
  for(int i=0; i<input.length;i++){
    stack.push(input[i]);
  }
  String reversedString="";
  while(!stack.isEmpty()){
    reversedString += stack.pop();
  }return reversedString;
}

void main(){
  
String originalString = "hello njdn";
String reversedString= reverse(originalString);
print("orginal string ${originalString}");
print("the reversed list ${reversedString}");

}

