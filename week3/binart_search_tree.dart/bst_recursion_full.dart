class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value) {
    root = _insertRec(root, value);
  }

  TreeNode? _insertRec(TreeNode? root, int value) {
    if (root == null) {
      return TreeNode(value);
    }

    if (value < root.value) {
      root.left = _insertRec(root.left, value);
    } else if (value > root.value) {
      root.right = _insertRec(root.right, value);
    }

    return root;
  }

  // Inorder Traversal with Recursion
  void inorder() {
    _inorderRec(root);
    print("Inorder traversal:");
  }

  void _inorderRec(TreeNode? node) {
    if (node != null) {
      _inorderRec(node.left);
      print(node.value);
      _inorderRec(node.right);
    }
  }

  // Preorder Traversal with Recursion
  void preorder() {
    _preorderRec(root);
    print("Preorder traversal:");
  }

  void _preorderRec(TreeNode? node) {
    if (node != null) {
      print(node.value);
      _preorderRec(node.left);
      _preorderRec(node.right);
    }
  }

  // Postorder Traversal with Recursion
  void postorder() {
    _postorderRec(root);
    print("Postorder traversal:");
  }

  void _postorderRec(TreeNode? node) {
    if (node != null) {
      _postorderRec(node.left);
      _postorderRec(node.right);
      print(node.value);
    }
  }

  // Delete a node from the tree
  void delete(int value) {
    root = _deleteRec(root, value);
  }

  TreeNode? _deleteRec(TreeNode? root, int value) {
    if (root == null) {
      return root;
    }

    if (value < root.value) {
      root.left = _deleteRec(root.left, value);
    } else if (value > root.value) {
      root.right = _deleteRec(root.right, value);
    } else {
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      root.value = _minValue(root.right!);
      root.right = _deleteRec(root.right, root.value);
    }

    return root;
  }

  int _minValue(TreeNode node) {
    int minValue = node.value;
    while (node.left != null) {
      minValue = node.left!.value;
      node = node.left!;
    }
    return minValue;
  }
}

void main() {
  var bst = BinarySearchTree();
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
  bst.preorder();
  bst.postorder();

  // Delete node 6
  bst.delete(6);
  print("\nAfter deleting node 6:");
  bst.inorder();
}
