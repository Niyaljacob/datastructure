

class Stack{
  List <int>stack=[];

  void push(int value){
    stack.add(value);
  }

  int pop(){
    while(stack.isEmpty){
      throw Exception("the list is empty");
    }return stack.removeLast();
  }

  int peek(){
     while(stack.isEmpty){
      throw Exception("the list is empty");
    }return stack.last;
  }

  bool isempty(){
    return stack.isEmpty;
  }

  void delete(int datatodelete){
  List<int>temp=[];
  while(!isempty() && peek()!=datatodelete){
    temp.add(pop());
  }
  if(!isempty()){
    pop();
  }
  if(temp.isNotEmpty){
    push(temp.removeLast());
  }
}
}
void main(){
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  print("orginal stack ${stack.stack}");
  stack.delete(3);
  print("deleted stack ${stack.stack}");
}