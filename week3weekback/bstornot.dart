class TreeNode
{
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}
class BinarySearchTree{
  TreeNode? root;
  bool isvalidbstuntil(TreeNode? node, List<int>inorder){
    if(node==null)return true;
    if(!isvalidbstuntil(node.left, inorder))return false;
    if(inorder.isNotEmpty&& node.value<=inorder.last)return false;
    inorder.add(node.value);
    return isvalidbstuntil(node.right, inorder);
  }bool isvalidbst(TreeNode? node){
    return isvalidbstuntil(node, []);
  }
}

void main(){
  var tree = BinarySearchTree();
  tree.root = TreeNode(10);
  tree.root!.left = TreeNode(5);
  tree.root!.right = TreeNode(15);
  tree.root!.left!.left = TreeNode(2);
  tree.root!.left!.right = TreeNode(7);

  bool bst=tree.isvalidbst(tree.root);
  print(bst);
}