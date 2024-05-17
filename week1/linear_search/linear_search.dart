int linearSearch(List<int>arr, int target){
  for(int i = 0; i<arr.length;i++){
    if(target==arr[i]){
      return i;
    }
  }return -1;
}

void main(){
  List<int>myList =[10,20,30,40];
  int target = 30;

  int result = linearSearch(myList, target);
  if(result!=-1){
    print("the $target in the index $result");
  }else{
    print("the $target is not found in the list");
  }
}