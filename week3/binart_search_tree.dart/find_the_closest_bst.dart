// Define a class to represent nodes in a binary tree
class TreeNode {
  late int value; // Value of the node
  TreeNode? left; // Left child node
  TreeNode? right; // Right child node

  // Constructor to initialize a node with a given value
  TreeNode(this.value);
}

// Define a class to manage binary tree operations
class BinaryTree {
  TreeNode? root; // Root node of the binary tree

  // Insert a value into the binary search tree
  void insert(int value) {
    root = _insertRecursive(root, value);
  }

  // Helper method to recursively insert a value into the binary search tree
  TreeNode? _insertRecursive(TreeNode? node, int value) {
    // If the current node is null, create a new node with the given value
    if (node == null) {
      return TreeNode(value);
    }

    // If the value is less than the current node's value, insert into the left subtree
    if (value < node.value) {
      node.left = _insertRecursive(node.left, value);
    }
    // If the value is greater than or equal to the current node's value, insert into the right subtree
    else {
      node.right = _insertRecursive(node.right, value);
    }

    return node; // Return the modified node
  }

  // Find the closest value to the target value in the binary search tree
  int findClosestValue(TreeNode? node, int target) {
    // Initialize the closest value with the value of the root node
    int closest = node!.value;

    // Traverse the binary tree until reaching a leaf node
    while (node != null) {
      // Update the closest value if the current node's value is closer to the target
      if ((node.value - target).abs() < (closest - target).abs()) {
        closest = node.value;
      }

      // Move to the left child if the target is less than the current node's value
      if (target < node.value) {
        node = node.left;
      }
      // Move to the right child if the target is greater than the current node's value
      else if (target > node.value) {
        node = node.right;
      }
      // If the target is equal to the current node's value, break the loop
      else {
        break;
      }
    }

    return closest; // Return the closest value found
  }
}

// Main function to test the binary tree operations
void main() {
  // Create a binary tree instance
  var tree = BinaryTree();

  // Insert some values into the binary tree
  tree.insert(10);
  tree.insert(5);
  tree.insert(15);
  tree.insert(2);
  tree.insert(7);
  tree.insert(12);
  tree.insert(17);

  // Find the closest value to the target value
  int target = 18;
  int closestValue = tree.findClosestValue(tree.root, target);

  // Print the closest value to the target
  print('Closest value to $target: $closestValue');
}
