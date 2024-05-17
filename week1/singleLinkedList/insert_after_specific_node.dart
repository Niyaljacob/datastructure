class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node?head;
  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    head=linkedlist;
  }


  void insertAfterNode(int dataToInsert, int dataAfter) {
    // Start with the head of the list
    Node? current = head;
    // Traverse the list until the end or until the node with dataAfter is found
    while (current != null) {
       // Check if the current node's data is equal to dataAfter
      if (current.data == dataAfter) {
        // Create a new node with dataToInsert
        Node newNode = Node(dataToInsert);
        // Set the new node's next pointer to the current node's next pointer
        newNode.next = current.next;
        // Update the current node's next pointer to point to the new node
        current.next = newNode;
         // Exit the method after inserting the new node
        return;
      }
      current = current.next;
      // Move to the next node in the list
    }
    print("Node with data $dataAfter not found.");
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
  LinkedList list = LinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.insertAfterNode(20, 25);
  list.printNodes();
}








