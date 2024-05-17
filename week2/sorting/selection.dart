void SelectionSort(List<int>arr){
  int n= arr.length;
  for(int i=0; i<n-1; i++){
    int minIndex=i;
    for(int j=i+1; j<n;j++){
      if(arr[j]<arr[minIndex]){
        minIndex=j;
      }
    }int temp=arr[minIndex];
    arr[minIndex]=arr[i];
    arr[i]=temp;
  }
}

void main(){
  List<int>arr=[80,30,40,15,25,90,55];
  print("orginal array $arr");
  SelectionSort(arr);
  print("the sorted array $arr");
}