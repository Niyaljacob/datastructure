class Node {
  String? data;
  Node? next;
  Node? previous;

  Node(this.data);
}

class DoubleLinkedList {
  Node? head;

  void addToTail(String data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
      newNode.previous = current;
    }
  }

  String reverseString() {
    if (head == null) return "";

    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }

    String reversed = "";
    while (current != null) {
      reversed += current.data!;
      current = current.previous;
    }

    return reversed;
  }
}

void main() {
  String original = "hello";
  DoubleLinkedList list = DoubleLinkedList();

  for (int i = 0; i < original.length; i++) {
    list.addToTail(original[i]);
  }

  String reversed = list.reverseString();
  print('Original string: $original'); // Output: Original string: hello
  print('Reversed string: $reversed'); // Output: Reversed string: olleh
}
