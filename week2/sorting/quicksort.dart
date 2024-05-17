void QickSort(List<int>arr, int low, int high){
  if(low<high){
    int pivoteIndex=partition(arr, low, high);

    QickSort(arr, low, pivoteIndex-1);
    QickSort(arr, pivoteIndex+1, high);

  }
}

int partition(List<int>arr, int low, int high){
  int pivote=arr[high];
  int i=low-1;

  for(int j =low; j<high; j++){
    if(arr[j]<pivote){
      i++;

      int temp= arr[i];
      arr[i]=arr[j];
      arr[j]=temp;
    }
  }
      int temp = arr[i+1];
      arr[i+1]=arr[high];
      arr[high]=temp;
      return i+1;
}


void main(){
  List<int>arr=[40,20,30,60,22,33,70];
  print("orginal array $arr");
  QickSort(arr, 0, arr.length-1);
  print("sorted array $arr");
}