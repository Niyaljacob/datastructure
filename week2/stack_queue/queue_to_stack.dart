import 'dart:collection';

class Queue<T> {
  ListQueue<T> _queue = ListQueue<T>();

  void enqueue(T value) {
    _queue.addLast(value);
  }

  T dequeue() {
    if (_queue.isEmpty) {
      throw Exception("Queue is empty");
    }
    return _queue.removeFirst();
  }

  T front() {
    if (_queue.isEmpty) {
      throw Exception("Queue is empty");
    }
    return _queue.first;
  }

  bool isEmpty() {
    return _queue.isEmpty;
  }

  int length() {
    return _queue.length;
  }
}

class Stack<T> {
  Queue<T> queue1 = Queue<T>();
  Queue<T> queue2 = Queue<T>();

  void push(T value) {
    // Enqueue the new element into queue2
    queue2.enqueue(value);

    // Transfer all elements from queue1 to queue2
    while (!queue1.isEmpty()) {
      queue2.enqueue(queue1.dequeue());
    }

    // Swap the names of queue1 and queue2
    Queue<T> temp = queue1;
    queue1 = queue2;
    queue2 = temp;
  }

  T pop() {
    if (queue1.isEmpty()) {
      throw Exception("Stack is empty");
    }
    return queue1.dequeue();
  }

  T top() {
    if (queue1.isEmpty()) {
      throw Exception("Stack is empty");
    }
    return queue1.front();
  }

  bool isEmpty() {
    return queue1.isEmpty();
  }
}

void main() {
  Stack<int> stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  print("Top of stack: ${stack.top()}"); // Output: 4
  print("Pop from stack: ${stack.pop()}"); // Output: 4
  print("Pop from stack: ${stack.pop()}"); // Output: 3

  stack.push(5);

  print("Top of stack: ${stack.top()}"); // Output: 5
  print("Pop from stack: ${stack.pop()}"); // Output: 5
  print("Pop from stack: ${stack.pop()}"); // Output: 2
  print("Pop from stack: ${stack.pop()}"); // Output: 1
}
