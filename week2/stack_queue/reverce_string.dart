class Stack {
  List<String> _stack = [];

  void push(String value) {
    _stack.add(value);
  }

  String pop() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    }
    return _stack.removeLast();
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

String reverse(String input) {
  Stack stack = Stack();

  // Push each character of the string onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  // Pop each character off the stack to construct the reversed string
  String reversedString = "";
  while (!stack.isEmpty()) {
    reversedString += stack.pop();
  }

  return reversedString;
}

void main() {
  String originalString = "Hello, world!";
  String reversedString = reverse(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}
