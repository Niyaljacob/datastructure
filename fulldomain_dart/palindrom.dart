void main(){
  String name="amma";
  String names=namereversed(name);
  if(name==names){
    print('palindrom');
  }else{
    print("not pal");
  }
}

String namereversed(String input){
  if(input.length<1){
    return input;
  }

  return input[input.length-1]+namereversed(input.substring(0, input.length-1));
}