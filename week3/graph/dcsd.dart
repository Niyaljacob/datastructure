class Graph {
  final int V;
  final List<List<int>> adj;

  Graph(this.V) : adj = List.generate(V, (_) => []);

  // Function to add an edge between two vertices
  void addEdge(int v, int w) {
    adj[v].add(w);
    adj[w].add(v); // For undirected graph
  }

  void printGraph() {
    for (int v = 0; v < V; ++v) {
      print("Adjacency list of vertex $v");
      print("head${adj[v].map((node) => ' -> $node').join()}\n");
    }
  }

   void bfs(int startVertex) {
    var visited = List<bool>.filled(V, false);
    var queue = [startVertex];

    visited[startVertex] = true;

    while (queue.isNotEmpty) {
      var s = queue.removeAt(0);
      print("$s ");

      for (final node in adj[s]) {
        if (!visited[node]) {
          visited[node] = true;
          queue.add(node);
        }
      }
    }
  }
}

void main() {
  final graph = Graph(5);
     graph.addEdge(0, 1);
  graph.addEdge(0, 4);
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(1, 4);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);

  graph.printGraph();

  print("BFS Traversal:");
  graph.bfs(2);
}
