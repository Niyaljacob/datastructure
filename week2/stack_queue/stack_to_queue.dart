class Stack<T> {
  List<T> _stack = [];

  void push(T value) {
    _stack.add(value);
  }

  T pop() {
    if (_stack.isEmpty) {
      throw Exception("Stack is empty");
    }
    return _stack.removeLast();
  }

  T peek() {
    if (_stack.isEmpty) {
      throw Exception("Stack is empty");
    }
    return _stack.last;
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

class Queue<T> {
  Stack<T> stack1 = Stack<T>();
  Stack<T> stack2 = Stack<T>();

  void enqueue(T value) {
    stack1.push(value);
  }

  T dequeue() {
    if (stack2.isEmpty()) {
      while (!stack1.isEmpty()) {
        stack2.push(stack1.pop());
      }
    }
    if (stack2.isEmpty()) {
      throw Exception("Queue is empty");
    }
    return stack2.pop();
  }

  bool isEmpty() {
    return stack1.isEmpty() && stack2.isEmpty();
  }
}

void main() {
  Queue<int> queue = Queue<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);

  print("Dequeue: ${queue.dequeue()}"); // Output: 1
  print("Dequeue: ${queue.dequeue()}"); // Output: 2

  queue.enqueue(5);

  print("Dequeue: ${queue.dequeue()}"); // Output: 3
  print("Dequeue: ${queue.dequeue()}"); // Output: 4
  print("Dequeue: ${queue.dequeue()}"); // Output: 5
}
