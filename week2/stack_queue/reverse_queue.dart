import 'dart:collection';

String reverseStringUsingQueue(String input) {
  Queue<String> queue = Queue<String>();

  // Enqueue each character of the string
  for (int i = 0; i < input.length; i++) {
    queue.addFirst(input[i]);
  }

  // Dequeue each character to construct the reversed string
  String reversedString = "";
  while (queue.isNotEmpty) {
    reversedString += queue.removeFirst();
  }

  return reversedString;
}

void main() {
  String originalString = "Hello, world!";
  String reversedString = reverseStringUsingQueue(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}
