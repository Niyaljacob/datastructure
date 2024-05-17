class Queue{
  List<int> queue=[];

  void enqueue(int value){
    queue.add(value);
  }

  int dequeue(){
    while(queue.isEmpty){
      throw Exception("the list is empty");
    }return queue.removeAt(0);
  }

  int length(){
    return queue.length;
  }

  bool isempty(){
    return queue.isEmpty;
  }

  int peek(){
    while(queue.isEmpty){
      throw Exception("the list is empty");
    }return queue.last;
  }

}

void main(){
  Queue queue= Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);


  print("lat element of the list ${queue.peek()}");
  print("lenght of the list ${queue.length()}");
  while(!queue.isempty())
  {
    print("the list ${queue.dequeue()}");
  }
}