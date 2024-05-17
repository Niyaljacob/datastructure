class Graph {
  final int V;
  final List<List<int>> adj;

  Graph(this.V) : adj = List.generate(V, (_) => []);

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
}

void main() {
  final graph = Graph(5)
    ..addEdge(0, 1)
    ..addEdge(0, 4)
    ..addEdge(1, 2)
    ..addEdge(1, 3)
    ..addEdge(1, 4)
    ..addEdge(2, 3)
    ..addEdge(3, 4);

  graph.printGraph();
}
