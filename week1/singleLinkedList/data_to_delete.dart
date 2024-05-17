class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    head=linkedlist;
  }

    void deleteNodeWithData(int dataToDelete) {
  if (head == null) {
    return; // Empty list, nothing to delete
  }

  // Special case: if the head node itself holds the data to be deleted
  if (head!.data == dataToDelete) {
    head = head!.next;
    return;
  }

  Node? current = head;
  while (current!.next != null) {
    if (current.next!.data == dataToDelete) {
      // Found the node with the data to delete
      current.next = current.next!.next;
      return;
    }
    current = current.next;
  }
}

  void printNodes(){
    Node? current = head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}

void main(){
  LinkedList list = LinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.deleteNodeWithData(20);
  list.printNodes();
}









