







class Heap{
  List<int>heap=[];
  void insert(int value){
    heap.add(value);
    bubbleup(heap.length-1);
  }
  int? removemin(){
    if(heap.isEmpty){
      return null;
    }
    int minvalue=heap[0];
    heap[0]=heap.removeLast();
    heapify(0);
    return minvalue;
  }

  void buildmin(List<int>array){
    heap=List.from(array);
    for(int i=(heap.length~/2)-1; i>=0; i++){
      heapify(i);
    }
  }

  void bubbleup(int index){
    if(index==0){
      return;
    }
    int parentIndex=(index-1)~/2;
    if(heap[index]<heap[parentIndex]){
      swap(index, parentIndex);
      bubbleup(parentIndex);
    }
  }

  void heapify(int index){
    int leftchildIndex=2*index+1;
    int rightchildIndex=2*index+2;
    int smallest=index;
    if(leftchildIndex<heap.length && heap[index]<heap[smallest]){
      smallest=leftchildIndex;
    }if(rightchildIndex<heap.length && heap[index]<heap[smallest])
    {
      smallest=rightchildIndex;
    }
    if(smallest!=index){
      swap(index, smallest);
      heapify(smallest);
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
void main(){
  var minHeap=Heap();
  minHeap.insert(10);
  minHeap.insert(5);
  minHeap.insert(20);
 
  minHeap.insert(8);
  
  minHeap.display();

  minHeap.removemin();
  minHeap.display();
}