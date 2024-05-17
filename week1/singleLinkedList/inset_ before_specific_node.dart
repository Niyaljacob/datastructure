

class Node{
  final int? data;
  Node? next;

  Node(this.data);
}

class LinkedList{
  Node? head;
  void addtohead(int data){
    Node newNode = Node(data);
    newNode.next=head;
    head= newNode;

  }

  // Define a method to insert a new node with data before a node with specific data
void insertBeforeNode(int dataToInsert, int dataBefore) {
  // Check if the linked list is empty
  if (head == null) {
    return; // Nothing to insert before
  }

  // Special case: if the head node itself holds the data before which to insert
  if (head!.data == dataBefore) {
    addtohead(dataToInsert); // Insert at the head
    return; // Exit the method
  }

  Node? current = head; // Start from the head of the linked list
  while (current!.next != null) { // Traverse the linked list until the end is reached
    if (current.next!.data == dataBefore) { // Check if the next node contains the data before which to insert
      // Found the node before which to insert the new node
      Node newNode = Node(dataToInsert); // Create a new node with the data to insert
      newNode.next = current.next; // Set the next of the new node to the next of the current node
      current.next = newNode; // Set the next of the current node to the new node
      return; // Exit the method
    }
    current = current.next; // Move to the next node
  }
}


   // Function to print the nodes
  void printNodes() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }


}
void main(){
  LinkedList list = LinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
 list.insertBeforeNode(15, 10);
  list.printNodes();
}




























