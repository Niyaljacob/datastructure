class Heap{
  List<int>heap=[];
  void insert(int value){
    heap.add(value);
    bubbleup(heap.length-1);
  }

  int? remove(){
    if (heap.isEmpty) return null;
   int minHeap=heap[0];
   heap[0]=heap.removeLast();
   heapify(0);
   return minHeap; 
  }

  void buildminHeap(List<int>array){
    heap=List.from(array);
    for(int i=(heap.length~/2)-1;i>=0;i--){
      heapify(i);
    }
  }

  void heapify(int index){
    int lefChildIndex=2*index+1;
    int righChildIndex=2*index+2;
    int smallest=index;
    if(lefChildIndex<heap.length && heap[lefChildIndex]<heap[smallest]){
      smallest=lefChildIndex;
    }if(righChildIndex<heap.length&& heap[righChildIndex]<heap[smallest]){
      smallest=righChildIndex;
    }if(smallest!=index){
      swap(index, smallest);
      heapify(smallest);
    }
  }

  void bubbleup(int index){
    if(index==0){
      return;
    }int parentIndex=(index-1)~/2;
    if(heap[index]<heap[parentIndex]);
    swap(index, parentIndex);
    bubbleup(parentIndex);
  }

  void swap(int i, int j){
    int temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }

  void display()
  {
    print(heap);
  }
}
void main(){
  var heap=Heap();
  heap.insert(10);
  heap.insert(5);
  heap.insert(20);
  heap.insert(3);
  heap.insert(8);
  heap.display();
  heap.remove();
  heap.display();
}