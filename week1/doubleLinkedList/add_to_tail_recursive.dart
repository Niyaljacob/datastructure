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

  void addToTailRecursive(Node? node, int data){
    if(node==null){
      head=Node(data);
      return;
    }
    if(node.next==null){
      Node newNode = Node(data);
      newNode.previous=node;
      node.next=newNode;
      return;

    }addToTailRecursive(node.next, data);
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
  DoubleLinkedList list= DoubleLinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.addToTailRecursive(list.head, 100);
  list.printNodes();
}