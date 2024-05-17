class Node{
  int? data;
  Node? next;
  Node? previous;
  Node(this.data);
}

class DoubleLinkedList{
  Node? head;
  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    if(head!=null){
      head!.previous=linkedlist;
    }
    head=linkedlist;
  }

  void addToTail(int data){
    Node newNode= Node(data);
    if(head==null){
      head=newNode;
    }else{
      Node? current=head;
      while(current!.next!=null){
        current=current.next;
        newNode.previous=current;
      }current.next=newNode;
    }
  }
  void printNodes(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }



  void printprivious(){
    Node? current=head;
    while(current!=null&&current.next!=null){
      current=current.next;
    }
    while(current!=null){
      print(current.data);
      current=current.previous;
    }
  }
}

void main(){
  DoubleLinkedList list = DoubleLinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.addToTail(40);
  list.printNodes();
  print('\n');
  list.printprivious();
}