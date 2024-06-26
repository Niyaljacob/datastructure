class Node{
  String? data;
  Node? next;
  Node? previous;
  Node(this.data);
}

class DoubleLinkedList{
  Node? head;
  void addtohead(String data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      Node? current=head;
      while(current!.next!=null){
        current=current.next;
      }
      current.next=newNode;
      newNode.previous=current;
    }
  }

  String reverseString(){
    if(head==null)return "";
    Node? current=head;
      while(current!.next!=null){
        current=current.next;
      }
      String reverse="";
      while(current!=null){
        reverse+=current.data!;
      current=current.previous;
      }
      return reverse;
  }
}

void main(){
  String reverse="niyal";
  DoubleLinkedList list=DoubleLinkedList();
  for(int i=0;i<reverse.length;i++){
    list.addtohead(reverse[i]);
  }
  String output=list.reverseString();
  print(reverse);
  print(output);
}