class Node {
  String value;
  Node? next;
  Node? prev;

  Node(this.value);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void add(String value) {
    Node newNode = Node(value);
    if (head == null) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void reverse() {
    Node? current = head;
    Node? temp = null;

    while (current != null) {
      temp = current.prev;
      current.prev = current.next;
      current.next = temp;
      current = current.prev;
    }

    if (temp != null) {
      head = temp.prev;
    }
  }

  @override
  String toString() {
    Node? current = head;
    String result = '';

    while (current != null) {
      result += current.value;
      current = current.next;
    }

    return result;
  }
}

void main() {
  DoublyLinkedList dll = DoublyLinkedList();
  String input = "hello";

  for (int i = 0; i < input.length; i++) {
    dll.add(input[i]);
  }

  print("Original string: ${dll}");
  
  dll.reverse();

  print("Reversed string: ${dll}");
}
