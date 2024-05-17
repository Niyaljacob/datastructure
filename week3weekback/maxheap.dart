class Heap{
  List<int>heap=[];
  void insert(int value){
    heap.add(value);
    bubbleup(heap.length-1);
  }

  int? removeMax(){
    if(heap.isEmpty){
      return null;
    }
    int maxValue=heap[0];
    heap[0]=heap.removeLast();
    hepify(0);
    return maxValue;
  }

  void buildMaxHeap(List<int>array){
    heap=List.from(array);
    for(int i=(heap.length~/2)-1;i>=0;i++){
      hepify(i);
    }
  }
  void bubbleup(int index){
    if(index==0)return;
    int parentIndex=(index-1)~/2;
    if(heap[index]>heap[parentIndex]){
      swap(index, parentIndex);
      bubbleup(parentIndex);
    }
  }
  void hepify(int index){
    int leftChildIndex=2*index+1;
    int rightChildIndex=2*index+2;
    int largest=index;
    if(leftChildIndex<heap.length&& heap[leftChildIndex]>heap[largest]){
      largest=leftChildIndex;
    }if(rightChildIndex<heap.length&& heap[rightChildIndex]>heap[largest]){
      largest=rightChildIndex;
    }
    if(largest!=index){
      swap(index, largest);
      hepify(largest);
    }
  }

  void swap(int i, int j){
    int temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }
  void display(){
    print(heap);
  }
}

void main() {
  var minHeap = Heap();
  minHeap.insert(10);
  minHeap.insert(5);
  minHeap.insert(20);
  minHeap.insert(3);
  minHeap.insert(8);
  
  minHeap.display();

  minHeap.removeMax();
  minHeap.display();
}