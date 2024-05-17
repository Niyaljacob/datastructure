class Node{
  int? data;
  Node? next;
  Node? previous;
  Node(this.data);
}

class DoubleLinkedList{
  Node? head;
  void addtohead(int data){
    Node linkedlist = Node(data);
    linkedlist.next=head;
    if(head!=null){
      head!.previous=linkedlist;
    }
    head=linkedlist;
  }

  void addToTail(int data){
    Node newNode =Node(data);
    if(head==null){
      head=head!.next;
    }
    else{
      Node? current=head;
      while(current!.next!=null){
        current=current.next;
        newNode.previous=current;
      }current.next=newNode;
    }
  }

  void addToTailRecursive(Node? node, int? data){
    if(node==null){
      head=Node(data);
      return;
    }
    if(node.next==null){
      Node newNode =Node(data);
      newNode.previous=node;
      node.next=newNode;
      return;
    }addToTailRecursive(node.next, data);
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
        current.previous!.next=current.next;
        if(current.next!=null){
          current.next!.previous=current.previous;
        }return;
      }current=current.next;
    }
  }

  void insertAfterNode(int datatoInsert, int datatoAfter){
    Node? current=head;
    while(current!=null){
      if(current.data==datatoAfter){
        Node newNode = Node(datatoInsert);
        newNode.next=current.next;
        newNode.previous=current;
        if(current.next!=null){
          current.next!.previous=newNode;
        }
        current.next=newNode;
        return;
      }current=current.next;
    }
  }

  void insertBefore(int datatoInsert, int datatoBefore){
    if(head!.data==datatoBefore){
      addtohead(datatoInsert);
      return;
    }
    Node? current=head;
    while(current!.next!=null){
      if(current.next!.data==datatoBefore){
        Node newNode = Node(datatoInsert);
        newNode.next=current.next;
        newNode.previous=current;
        if(current.next!=null){
          current.next!.previous=newNode;
        }
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
    while(current!=null&& current.data!=data){
     current=current.next;
    }return current;
  }
}

void main(){
  DoubleLinkedList list= DoubleLinkedList();
  list.addtohead(10);
  list.addtohead(20);
  list.addtohead(30);
  list.addToTail(40);
  list.addToTailRecursive(list.head, 100);
  list.deleNode(10);
  list.insertAfterNode(500, 30);
  list.insertBefore(1000, 30);
  list.printNodes();
  Node? founddata = list.search(30);
  if(founddata!=null){
    print("the node found ${founddata.data}");
  }

}