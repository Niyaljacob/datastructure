void InsertionSort(List<int>arr){
  int n=arr.length;
  for(int i=1;i<n;i++){
    int key=arr[i];
    int j=i-1;
    while(j>=0 && arr[j]>key){
      arr[j+1]=arr[j];
      j=j-1;
    }
    arr[j+1]=key;
  }
}

void main(){
  List<int> arr =[30,10,15,50,90,55,60];
  print("orginal array $arr");
  InsertionSort(arr);
  print("sorted array $arr");
}