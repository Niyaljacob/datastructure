void main(){
  List<int>nums=[6,3,5,7,8,9];
  int total=sumoflist(nums);
  print(total);

}

int sumoflist(List<int>input){
  if(input.isEmpty){
    return 0;
  }
  return input[0]+sumoflist(input.sublist(1));
}