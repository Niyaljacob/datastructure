

class Node{
  final int? data;
  Node? next;

  Node(this.data);
}

class LinkedList{
  Node? head;
  void addtohead(int data){
    Node newNode = Node(data);
    newNode.next=head;
    head= newNode;

  }

void addToTail(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }
 
  bool isEmpty(){
    return head==null;
    }   

 Node? search(int data){
  Node? current= head;
  while(current!=null && current.data!=data){
    current=current.next;
  }return current;
 }

   // Function to print the nodes
  void printNodes() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }


  

}
void main(){
  LinkedList list = LinkedList();
  list.addtohead(10);
  list.addToTail(50);
  list.printNodes();
  Node? foundNode=list.search(50);
  if(foundNode!=null){
    print("node found ${foundNode.data}");
  }else{
    print("not found");
  }
}