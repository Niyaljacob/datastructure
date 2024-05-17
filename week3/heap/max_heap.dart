class MaxHeap {
  List<int> heap = [];

  // Insert an element into the max heap
  void insert(int value) {
    heap.add(value);
    _bubbleUp(heap.length - 1);
  }

  // Remove and return the maximum element from the max heap
  int? removeMax() {
    if (heap.isEmpty) return null;
    int maxValue = heap[0];
    heap[0] = heap.removeLast();
    _heapify(0);
    return maxValue;
  }

  // Convert an array into a max heap
  void buildMaxHeap(List<int> array) {
    heap = List.from(array);
    for (int i = (heap.length ~/ 2) - 1; i >= 0; i--) {
      _heapify(i);
    }
  }

  // Helper method to maintain the max heap property after insertion
  void _bubbleUp(int index) {
    if (index == 0) return;
    int parentIndex = (index - 1) ~/ 2;
    if (heap[index] > heap[parentIndex]) {
      _swap(index, parentIndex);
      _bubbleUp(parentIndex);
    }
  }

  // Helper method to maintain the max heap property after removal
  void _heapify(int index) {
    int leftChildIndex = 2 * index + 1;
    int rightChildIndex = 2 * index + 2;
    int largest = index;

    if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[largest]) {
      largest = leftChildIndex;
    }
    if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[largest]) {
      largest = rightChildIndex;
    }
    if (largest != index) {
      _swap(index, largest);
      _heapify(largest);
    }
  }

  // Helper method to swap two elements in the heap
  void _swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  // Display the elements of the max heap
  void display() {
    print(heap);
  }
}

void main() {
  var maxHeap = MaxHeap();
  maxHeap.insert(10);
  maxHeap.insert(5);
  maxHeap.insert(20);
  maxHeap.insert(3);
  maxHeap.insert(8);
  
  maxHeap.display();

  maxHeap.removeMax();
  maxHeap.display();
}
