class TreeNode
{
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}

class BinarySearchTree{
  TreeNode? root;
  void insert(int value){
    root=insertRec(root, value);
  }

  TreeNode? insertRec(TreeNode? root, int value){
    if (root==null)return TreeNode(value);
    if(value<root.value){
      root.left=insertRec(root.left, value);
    }else if(value>root.value){
      root.right=insertRec(root.right, value);
    }return root;
  }

  void inorder(){
    inorderRec(root);
    print("the inorder list: ");
  }

  void inorderRec(TreeNode? node){
    if(node!=null){
      inorderRec(node.left);
      print(node.value);
      inorderRec(node.right);
    }
  }

  void delete(int value){
   root=deleteRec(root, value);
  }

  TreeNode? deleteRec(TreeNode? root, int value){
    if(root==null){
      return root;
    }
    if(value<root.value){
      root.left=deleteRec(root.left, value);
    }else if(value>root.value){
      root.right=deleteRec(root.right, value);
    }else{
      if(root.left==null){
        return root.right;
      }else if (root.right==null){
        return root.left;
      }
      root.value=minValue(root.right!);
      root.right=deleteRec(root.right, root.value);
    }return root;
  }

  int minValue(TreeNode node){
    int minValue=node.value;
    while(node.left!=null){
      minValue=node.left!.value;
      node=node.left!;
    }return minValue;
  }
}

void main(){
  var bst=BinarySearchTree();
  bst.insert(8);
  bst.insert(3);
  bst.insert(10);
  bst.insert(1);
  bst.insert(6);
  bst.insert(14);
  bst.insert(4);
  bst.insert(7);
  bst.insert(13);

  bst.inorder();
  bst.delete(6);
  bst.inorder();
}