class Graph{
  final int V;
  final List<List<int>>adj;
  Graph(this.V):adj=List.generate(V, (_) => []);
  void addEdge(int v, int w){
    adj[v].add(w);
    adj[w].add(v);
  }
  void printgraph(){
    for(int v =0;v<V;++v){
      print("adj vertices $v");
      print("head ${adj[v].map((node) => '-> $node').join()}\n");
    }
  }
}

void main(){
  final graph=Graph(5);
  graph.addEdge(0, 1);
  graph.addEdge(0, 3);
  graph.addEdge(0, 4);
  graph.addEdge(1, 2);
  graph.addEdge(1, 4);
  graph.addEdge(1, 3);
  graph.addEdge(2, 3);
  graph.addEdge(2, 4);
  graph.printgraph();
}

