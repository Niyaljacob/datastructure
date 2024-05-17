// void bubblesort(List<int>arr){
//   int n=arr.length;
//   for(int i=0;i<n-1;i++){
//     for(int j=0; j<n-i-1; j++){
//       if(arr[j]>arr[j+1]){
//         int temp=arr[j];
//         arr[j]=arr[j+1];
//         arr[j+1]=temp;
//       }
//     }
//   }
// }

// void main(){
//   List<int>arr=[10,30,20,150,15,60,25];
//   print("the orginal array $arr");
//   bubblesort(arr);
//   print("the sorted array $arr");
// }

// void insertionsort(List<int>arr){
//   int n=arr.length;
//   for(int i=1;i<n;i++){
//     int key=arr[i];
//     int j=i-1;
//     while(j>=0 && arr[j]>key){
//       arr[j+1]=arr[j];
//       j=j-1;
//     }
//     arr[j+1]=key;
//   }
  
// }

// void main(){
//   List<int> arr =[30,10,15,50,90,55,60];
//   print("orginal array $arr");
//   insertionsort(arr);
//   print("sorted array $arr");
// }


// void selectionsort(List<int>arr){
//   int n=arr.length;
//   for(int i=0;i<n-1;i++){
//     int midIndex=i;
//     for(int j=i+1; j<n;j++){
//       if(arr[j]<arr[midIndex]){
//         midIndex=j;
//       }
//     }
//     int temp=arr[midIndex];
//     arr[midIndex]=arr[i];
//     arr[i]=temp;
//   }
// }

// void main(){
//   List<int>arr=[80,30,40,15,25,90,55];
//   print("orginal array $arr");
//   selectionsort(arr);
//   print("the sorted array $arr");
// }



// void quiksort(List<int>arr, int low, int high){
//   if(low<high){
//     int pivotIndex=partition(arr, low, high);
//     quiksort(arr, low, pivotIndex-1);
//     quiksort(arr, pivotIndex+1, high);
//   }
// }
// int partition(List<int>arr, int low, int high){
//   int pivot=arr[high];
//   int i =low-1;
//   for(int j=low; j<high;j++){
//     if(arr[j]<pivot){
//       i++;
//       int temp=arr[i];
//       arr[i]=arr[j];
//       arr[j]=temp;
//     }
//   }
//   int temp=arr[i+1];
//   arr[i+1]=arr[high];
//   arr[high]=temp;
//   return i+1;
// }

// void main(){
//   List<int>arr=[40,20,30,60,22,33,70];
//   print("orginal array $arr");
//   quiksort(arr, 0, arr.length-1);
//   print("sorted array $arr");
// }


// void mergesort(List<int>arr){
//   if(arr.length<=1){
//     return;
//   }    
//   int mid=arr.length~/2;
//   List<int>lefthalf=arr.sublist(0, mid);
//   List<int>righthalf=arr.sublist(mid);
//   mergesort(lefthalf);
//   mergesort(righthalf);
//   merge(arr, lefthalf, righthalf);
// }
// void merge(List<int>arr, List<int>lefthalf, List<int>righthalf){
//   int i=0, j=0, k=0;

//   while(i<lefthalf.length&&j<righthalf.length){
//     if(lefthalf[i]<righthalf[j]){
//       arr[k]=lefthalf[i];
//       i++;
//     }else{
//       arr[k]=righthalf[j];
//       j++;
//     }
//     k++;
//   }

//   while(i<lefthalf.length){
//     arr[k]=lefthalf[i];
//     i++;
//     k++;
//   }

//   while(j<righthalf.length){
//     arr[k]=righthalf[j];
//     j++;
//     k++;
//   }
// }
// void main(){
//   List<int>arr=[20,15,60,55,35,80,75];
//   print("orginal array $arr");
//   mergesort(arr);
//   print("sorted array $arr");
// }






