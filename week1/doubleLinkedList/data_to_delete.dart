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
    if (head!=null){
      head!.previous=linkedlist;
    }
    head=linkedlist;
  }

  void deleNode(int dataToDelete){
    if(head==null){
      return;
    }
    if(head!.data==dataToDelete){
      head=head!.next;
      return;
    }
    Node? current=head;
    while(current!.next!=null){
      if(current.data==dataToDelete){
        current.previous!.next=current.next;
        if(current.next != null){
          current.next!.previous=current.previous;
        }
        return;
      }current=current.next;
    }
  }

  void printNodes(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}

void main(){
  DoubleLinkedList list = DoubleLinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.deleNode(20);
  list.printNodes();
}