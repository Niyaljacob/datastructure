// void main(){
//   String jsondata='''{"name":"Niyal"}''';



// Map<String, dynamic>data=jsonDecode(jsondata);
// print (data);
// }



import 'dart:convert';

void main(){
  Map<String, dynamic>data={"name": "niyal"};

  String jsonString=jsonEncode(data);
}