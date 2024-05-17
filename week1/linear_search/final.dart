// int linearSearch(List<int>arr, int target){
//   for(int i=0; i<arr.length;i++){
//     if(target==arr[i]){
//       return i;
//     }
//   }return -1;
// }

// void main(){
//   List<int>myList=[10,20,30,40,50,60];
//   int target=30;

//   int result=linearSearch(myList, target);
//   if(result!=-1){
//     print("$result");
//   }else{
//     print("not found");
//   }
// }

// int binarSearch(List<int>arr, int target, int left, int right){
//   if(left>right){
//     return -1;
//   }
//   int mid=left+(right-left)~/2;
//   if(arr[mid]==target){
//     return mid;
//   }
//   else if(arr[mid]>target){
//     return binarSearch(arr, target, left, mid-1);
//   }else{
//     return binarSearch(arr, target, right, mid+1);
//   }
// }
// void main(){
//   List<int>myList=[10,20,30,40,50,60];
//   int target=30;

//   int result= binarSearch(myList, target, 0, myList.length-1);
//   if(result!=-1){
//     print("$result");
//   }else{
//     print("not found");
//   }
// }


// int fibnacci(int n){
//   if(n<=1){
//     return n;
//   }
//   else{
//     return fibnacci(n-1)+ fibnacci(n-2);
//   }
// }
// void main(){
//   int terms=10;
//   for(int i=0; i<terms;i++){
//     print(fibnacci(i));
//   }
// }