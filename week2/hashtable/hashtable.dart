class KeyValue {
  String key;
  dynamic value;

  KeyValue(this.key, this.value);
}

class HashTable {
  List<List<KeyValue>>? table;

  HashTable(int size) {
    table = List.generate(size, (_) => []);
  }

  int _hash(String key) {
    int total = 0;
    for (var i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % table!.length;
  }

  void set(String key, dynamic value) {
    int index = _hash(key);
    for (var entry in table![index]) {
      if (entry.key == key) {
        entry.value = value; 
        return;
      }
    }
    table![index].add(KeyValue(key, value));
  }

  dynamic get(String key) {
    int index = _hash(key);
    for (var entry in table![index]) {
      if (entry.key == key) {
        return entry.value;
      }
    }
    return null; 
  }

  void remove(String key) {
    int index = _hash(key);
    table![index].removeWhere((entry) => entry.key == key);
  }

  void display() {
    for (var i = 0; i < table!.length; i++) {
      if (table![i].isNotEmpty) {
        print("Bucket $i:");
        for (var entry in table![i]) {
          print("  ${entry.key}: ${entry.value}");
        }
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable(10);

  hashTable.set('apple', 5);
  hashTable.set('banana', 7);
  hashTable.set('orange', 3);
  

  print("Value for 'apple': ${hashTable.get('apple')}");

  hashTable.remove('banana');

  print("Value for 'banana' after removal: ${hashTable.get('banana')}");

  print("\nHash Table contents:");
  hashTable.display();
}
