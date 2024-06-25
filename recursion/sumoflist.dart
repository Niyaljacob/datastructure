void main(){
  List<int>num=[4,3,2,6,7,8];
  int total=sums(num);
  print(total);

}

int sums(List<int>numbers){
  if(numbers.isEmpty){
    return 0;  
  }
  return numbers.first+sums(numbers.sublist(1));
}