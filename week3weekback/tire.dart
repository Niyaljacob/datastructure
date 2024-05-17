class Tire{
  Map<String, dynamic>root={};
  void insert(String word){
    Map<String, dynamic>node=root;
    for(int i=0;i<word.length;i++){
      String char=word[i];
      node[char]??=<String, dynamic>{};
      node=node[char];
    }node['end']=true;
  }

  bool search(String word){
    Map<String, dynamic>?node=searchNode(word);
    return node!=null && node.containsKey('end');
  }

  bool startWith(String prefix){
    return searchNode(prefix)!=null;
  }
  Map<String, dynamic>?searchNode(String word){
    Map<String, dynamic>node=root;
    for(int i=0;i<word.length;i++){
      String char=word[i];
      if(node.containsKey(char)){
        node=node[char];
      }else{
        return null;
      }
    }return node;
  }

  void delete(String word){
    deletehelper(root, word, 0);
  }
  bool deletehelper(Map<String, dynamic>node, String word, int depth){
    if(depth==word.length){
      bool isEndoftheword=node.remove('end')!=null;
      return isEndoftheword && node.isEmpty;
    }
    String char=word[depth];
    Map<String, dynamic>childNode=node[char]as Map<String, dynamic>;
    if(childNode.isEmpty){
      return false;
    }

    bool  sholudeletechilNode=deletehelper(childNode, word, depth+1);
    if(sholudeletechilNode){
      node.remove(char);
      return node.isEmpty;
    }return false;
  }
}

void main() {
  Tire trie = Tire();
  
  // Inserting words
  trie.insert("apple");
  trie.insert("banana");
  
  // Searching for words
  print(trie.search("apple")); // true
  print(trie.search("app"));   // false
  
  // Checking prefix
  print(trie.startWith("ban")); // true
  
  // Deleting a word
  trie.delete("apple");
  print(trie.search("apple")); // false
}



