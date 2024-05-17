class Trie {
  final Map<String, dynamic> root = {};

  void insert(String word) {
    Map<String, dynamic> node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      node[char] ??= <String, dynamic>{};
      node = node[char];
    }
    node['_end'] = true;
  }

  bool search(String word) {
    Map<String, dynamic>? node = _searchNode(word);
    return node != null && node.containsKey('_end');
  }
  
  bool startsWith(String prefix) {
    return _searchNode(prefix) != null;
  }

  Map<String, dynamic>? _searchNode(String word) {
    Map<String, dynamic> node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (node.containsKey(char)) {
        node = node[char];
      } else {
        return null;
      }
    }
    return node;
  }

  void delete(String word) {
    _deleteHelper(root, word, 0);
  }

  bool _deleteHelper(Map<String, dynamic> node, String word, int depth) {
  if (depth == word.length) { 
    bool isEndOfWord = node.remove('_end') != null;
    return isEndOfWord && node.isEmpty;
  }

  String char = word[depth];
  Map<String, dynamic>? childNode = node[char] as Map<String, dynamic>?;

  if (childNode == null) {
    return false;
  }

  bool shouldDeleteChildNode = _deleteHelper(childNode, word, depth + 1);

  if (shouldDeleteChildNode) {
    node.remove(char);
    return node.isEmpty;  
  }

  return false;
}
}

void main() {
  Trie trie = Trie();
  
  // Inserting words
  trie.insert("apple");
  trie.insert("banana");
  
  // Searching for words
  print(trie.search("apple")); // true
  print(trie.search("app"));   // false
  
  // Checking prefix
  print(trie.startsWith("ban")); // true
  
  // Deleting a word
  trie.delete("apple");
  print(trie.search("apple")); // false
}
