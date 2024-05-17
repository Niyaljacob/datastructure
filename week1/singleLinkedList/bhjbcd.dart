class Node{
  int? data;
   Node? next;
   Node(this.data);
}
class LinkedList{
  Node? head;
  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    head=linkedlist;
  }

  void addToTailnormal(int data){
   Node newNode = Node(data);
   if(head==null){
    head=Node(data);
   }else{
    Node? current=head;
    while(current!.next!=null){
      current=current.next;
    }current.next=newNode;
   }
  }

  void addToTail(Node? node, int? data){
    if(node==null){
      head=Node(data);
      return;
    }
    if(node.next==null){
      node.next=Node(data);
      return;
    }addToTail(node.next, data);
  }

  void deleNode(int dataToDelete){
    if(head==null){
      return;
    }
    if(head!.data==dataToDelete){
      head=head!.next;
      return;
    }
    Node? current=head;
    while(current!=null){
      if(current.data==dataToDelete){
        current.next=current.next!.next;
        return;
      }current=current.next;
    }
  }

  void datatoafter(int insertafterNode, int datatoinsert){
    Node? current=head;
    while(current!=null){
      if(current.data==insertafterNode){
        Node newNode = Node(datatoinsert);
        newNode.next=current.next;
        current.next=newNode;
        return;
      }current=current.next;
    } print("Node with data $insertafterNode not found.");
  }

  void datatoBefore(int datatoinsert, int dataBefore){
    if(head!.data==dataBefore){
      addtohead(datatoinsert);
      return;
    }
    Node? current=head;
    while(current!.next!=null){
      if(current.next!.data==dataBefore){
        Node newNode = Node(datatoinsert);
        newNode.next= current.next;
        current.next=newNode;
        return;
      }current=current.next;
    }
  }

  void printNodes(){
    Node? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }

  Node? search(int data){
    Node? current=head;
    while(current!=null&&current.data!=data){
      current=current.next;
    }return current;
  }

  bool? isEmpty(){
    return head==null;
  }

}

  void main(){
    LinkedList list = LinkedList();
    list.addtohead(10);
    list.addtohead(20);
    list.addtohead(30);
    list.addToTail(list.head, 100);
    list.deleNode(30);
    list.datatoafter(20, 15);
    list.datatoBefore(25, 20);
    list.addToTailnormal(200);
    list.printNodes();
    Node? foundNode=list.search(10);
    if(foundNode!=null){
      print("the node found ${foundNode.data}");
    }else{
      print("not found");
    }
    print("list is empty ${list.isEmpty()}");
  }