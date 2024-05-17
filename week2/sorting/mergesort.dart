void MergeSort(List<int>arr){
  if (arr.length <= 1)
   return;
  int mid=arr.length ~/2;
  List<int> lefthalf=arr.sublist(0,mid);
  List<int> righthalf= arr.sublist(mid);

  MergeSort(lefthalf);
  MergeSort(righthalf);

  merge(arr , lefthalf, righthalf);
}

void merge(List<int>arr, List<int>lefthalf, List<int>righthalf){
  int i=0, j=0, k=0;
  while(i<lefthalf.length&&j<righthalf.length){
    if(lefthalf[i]<righthalf[j]){
      arr[k]=lefthalf[i];
      i++;
    }else{
      arr[k]=righthalf[j];
      j++;
    }
    k++;
  }

  while(i<lefthalf.length){
    arr[k]=lefthalf[i];
    i++;
    k++;
  }

  while(j<righthalf.length){
    arr[k]=righthalf[j];
    j++;
    k++;
  }
}

void main(){
  List<int>arr=[20,15,60,55,35,80,75];
  print("orginal array $arr");
  MergeSort(arr);
  print("sorted array $arr");
}