int binarySearch(List<int>arr, int target, int left, int right){
  if(left>right){
    return -1;
  }
  int mid = left+((right-left)~/2);

  if(arr[mid]==target){
    return mid;
  }else if(arr[mid]>target){
    return binarySearch(arr, target, left, mid-1);
  }
  else{
    return binarySearch(arr, target, mid+1, right);
  }
}

void main(){
  List<int>myList =[10,20,30,40,50,60,70];
  int target=60;

  int result = binarySearch( myList, target, 0, myList.length-1);
  if(result!=-1){
    print("the $target in the index $result");
  }else{
    print("not found");
  }
}