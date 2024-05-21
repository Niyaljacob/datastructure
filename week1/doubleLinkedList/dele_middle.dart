class Node {
  int data;
  Node? prev;
  Node? next;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  // Append a node to the end of the list
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  // Delete the middle node of the list
  void deleteMiddle() {
    if (head == null) return; // List is empty
    if (head!.next == null) {
      head = null; // Only one element in the list
      return;
    }

    Node? slow = head;
    Node? fast = head;

    // Move fast pointer two steps and slow pointer one step
    while (fast != null && fast.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
    }

    // slow is now pointing to the middle node
    Node? middle = slow;
    if (middle!.prev != null) {
      middle.prev!.next = middle.next;
    } else {
      head = middle.next;
    }

    if (middle.next != null) {
      middle.next!.prev = middle.prev;
    } else {
      tail = middle.prev;
    }
  }

  // Print the list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);
  list.append(5);

  print("Original list:");
  list.printList();

  list.deleteMiddle();

  print("List after deleting the middle element:");
  list.printList();
}
