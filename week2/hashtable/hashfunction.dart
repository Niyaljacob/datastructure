class HashTable {
  final int size;
  final List<List<String>> table;

  HashTable(this.size) : table = List.generate(size, (_) => []);

  int _hash(String key) {
    int hash = 0;
    for (var char in key.runes) {
      hash = (hash + char) % size;
    }
    return hash;
  }

  void add(String key, String value) {
    int index = _hash(key);
    table[index].add(value);
  }

  List<String>? get(String key) {
    int index = _hash(key);
    return table[index];
  }
}

void main() {
  var hashTable = HashTable(10);
  hashTable.add('key1', 'value1');
  hashTable.add('key2', 'value2');
  
  print(hashTable.get('key1')); // Output: [value1]
  print(hashTable.get('key2')); // Output: [value2]
}
