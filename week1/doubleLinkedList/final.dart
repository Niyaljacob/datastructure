class Node{
  int? data;
   Node? next;
   Node? previous;
   Node(this.data);
}

class DoubleLinkedList{
  Node? head;
  void addtoHead(int data){
    Node linkedlist= Node(data);
    linkedlist.next=head;
    if(head!=null){
      head!.previous=linkedlist;
    }
    head=linkedlist;
  }

  void addtotail(int data){
   Node newNode =Node(data);
   if(head==null){
    head=newNode;
   }else{
    Node? current=head;
    while(current!.next!=null){
      current=current.next;
      newNode.previous=current;
    }current.next=newNode;
   }
  }

  void addtotailRecursive(Node? node, int data){
   if(node==null){
    head=Node(data);
    return;
   }if(node.next==null){
    Node newNode=Node(data);
    newNode.previous=node;
    node.next=newNode;
    return;
   }addtotailRecursive(node.next, data);
  }

  void deleteNode(int datatodelete){
    if(head==null){
      return;
    }
    if(head!.data==datatodelete){
      head=head!.next;
      return;
    }Node? current=head;
    while(current!.next!=null){
      if(current.data==datatodelete){
        current.previous!.next=current.next;
        if(current.next!=null){
          current.next!.previous=current.previous;
        }return;
      }current=current.next;
    }
  }

  void insertAfter(int datatoinsert, int datatoAfter){
   Node? current=head;
   while(current!=null){
    if(current.data==datatoAfter){
      Node newNode=Node(datatoinsert);
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

  void insertBeforeNode(int dataToInsert, int datatoBefore){
   if(head==null){
    addtoHead(dataToInsert);
    return;
   }Node? current=head;
   while(current!.next!=null){
    if(current.next!.data==datatoBefore){
      Node newNode=Node(dataToInsert);
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

  Node? search(int data){
    Node? current =head;
    while(current!=null&&current.data!=data){
      current=current.next;
    }return current;
  }
  bool isEmpty(){
    return head==null;
  }

  int length(){
   int count=0;
    Node? current=head;
    while(current!=null){
      count++;
      current=current.next;
    }return count;
  }

  void printNode(){
    Node? current = head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }



  



}
void main(){
  DoubleLinkedList list = DoubleLinkedList();
  list.addtoHead(10);
  list.addtoHead(20);
  list.addtoHead(30);
  list.addtotail(40);
   list.addtotailRecursive(list.head, 100);
   list.deleteNode(40);
   list.insertAfter(200, 10);
  list.insertBeforeNode(600, 10);
   list.printNode();
  // print("\n");
  
  Node? foundnode=list.search(100);
  if(foundnode!=null){
    print("the ${foundnode.data} in the list");

  }else{
    print("not found");
   }
  print("the lis isempty ${list.isEmpty()}");

   print("the length of the list is ${list.length()}");
  // list.printPrevious();
}