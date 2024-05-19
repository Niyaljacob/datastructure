class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? last = head;
    while (last!.next != null) {
      last = last.next;
    }
    last.next = newNode;
  }

  void deleteMiddle() {
    if (head == null || head!.next == null) {
      head = null;
      return;
    }

    Node? slow = head;
    Node? fast = head;
    Node? prev = null;

    while (fast != null && fast.next != null) {
      fast = fast.next!.next;
      prev = slow;
      slow = slow!.next;
    }

    if (prev != null) {
      prev.next = slow!.next;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
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
