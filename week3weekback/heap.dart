void HeapSort(List<int>arr){
  int n=arr.length;
  for(int i=(n~/2)-1;i>=0;i--){
    heapify(arr, n, i);
  }

  for(int i=n-1;i>0;i--){
    int temp=arr[i];
    arr[i]=arr[0];
    arr[0]=temp;
    heapify(arr, i, 0);
  }


}

void heapify(List<int>arr, int n, int i){
  int largest=i;
  int left=2*i+1;
  int right=2*i+2;
  if(left<n && arr[left]>arr[largest]){
    largest=left;
  }if(right<n && arr[right]>arr[largest]){
    largest=right;
  }if(largest!=i){
    int temp=arr[i];
    arr[i]=arr[largest];
    arr[largest]=temp;
    heapify(arr, n, largest);
  }
}

void main(){
  List<int>arr=[12, 11, 13, 5, 6, 50];
  print(arr);
  HeapSort(arr);
  print(arr);
}