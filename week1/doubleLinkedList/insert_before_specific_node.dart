class Node {
  int? data;
  Node? next;
  Node? previous;
  
  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  
  void addtohead(int data) {
    Node linkedlist = Node(data);
    linkedlist.next = head;
    if (head != null) {
      head!.previous = linkedlist;
    }
    head = linkedlist;
  }

  void insertAfterNode(int dataToInsert, int datatoBefore) {
    if (head!.data == null) {
      addtohead(dataToInsert);
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == datatoBefore) {
        Node newNode = Node(dataToInsert);
        newNode.next = current.next;
        newNode.previous = current; // Set the previous of the new node to the current node
        if (current.next != null) {
          current.next!.previous = newNode; // Set the previous of the next node to the new node
        }
        current.next = newNode;
        return;
      }
      current = current.next;
    }
  }

  void printNodes() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  DoubleLinkedList list = DoubleLinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.insertAfterNode(25, 20);
  list.printNodes();
}
