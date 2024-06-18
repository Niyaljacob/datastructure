class Area{
  double? length;
  double? breath;
  
  Area({double? length=10, double? breath=20}){
      this.length=length;
      this.breath=breath;
  } 

  double? findArea()
  {
    return length!*breath!;
  }
}

void main(){
  Area obj = Area();
  
  print("the area is ${obj.findArea()}");
}