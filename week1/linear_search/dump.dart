int binarySearch(List<int>arr, int target, int left, int right){
  if(left>right){
    return -1;

  }
  int mid=left+((right-left)~/2);
  if(arr[mid]==target){
    return mid;
  }else if(arr[mid]>target){
    return binarySearch(arr, target, left, mid-1);
  }else{
    return binarySearch(arr, target, mid+1, right);
  }
}

void main(){
  List<int>array=[1,2,3,4,5];
  int target=4;
  int result=binarySearch(array, target, 0, array.length-1);
  if(result!=-1){
    print('ok');
  }else{
    print('not');
  }
}