void main(){
List<int>number=[7,4,3,1,9];
int total=sums(number);
print(total);
}

int sums(List<int>number){
  if(number.isEmpty){
    return 0;
  }
  return number.first+sums(number.sublist(1));
}