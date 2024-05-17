class Node{
  int ? data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;

  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    head=linkedlist;
  }

  

  void addToTailRecursive(Node? node, int? data){
    if(node==null){
      head=Node(data);
      return;
    }
    if(node.next==null){
      node.next=Node(data);
      return;
    }
    addToTailRecursive(node.next, data);
  }

void printNodes(){
  Node? current=head;
  while (current!=null){
    print(current.data);
    current=current.next;
  }
}
}

void main(){
  LinkedList list = LinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addToTailRecursive(list.head, 100);
  list.printNodes();
}


