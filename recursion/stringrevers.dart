void main(){
  String name='amm';
  String rev=reverse(name);
  if(name==rev){
    print('pali');
  }else{
    print('not');
  }
}

String reverse(String name){
  if(name.isEmpty){
    return "";
  }
  return reverse(name.substring(1))+name[0];
}

