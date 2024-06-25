void main(){
  String name="amma";
  String reversed=reverse(name);
  print(reversed);

}

String reverse(String name){
  if(name.isEmpty||name.length==1){
    return name;
  }
  return reverse(name.substring(1))+name[0];
}