void BubbleSort(List<int>arr)
{
  int n = arr.length;
  for(int i=0;i<n-1;i++){
    for(int j=0; j<n-i-1;j++){
      if(arr[j]>arr[j+1]){
        int temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
}

void main(){
  List<int>arr=[10,30,20,150,15,60,25];
  print("orginal array $arr");
  BubbleSort(arr);
  print("sorted array $arr");
}