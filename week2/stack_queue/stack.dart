class Stack{
  List<int> stack=[];
  void push(int value){
    stack.add(value);
  }

  int pop(){
    while(stack.isEmpty){
      throw Exception("list is empty");
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

  int size(){
    return stack.length;
  }
}

void main(){
  Stack stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  print("last element of the list ${stack.peek()}");
  print("size of the list ${stack.size()}");

  while(!stack.isempty()){
    print(stack.pop());
  }

}