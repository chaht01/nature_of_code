class Distribution{
  int size;
  int[] graph;
  int w;
  Distribution(int _size){
    size = _size;
    graph = new int[size];
    w = width/size;
  }
  
  void display(int i){
    graph[i]++;
    background(255);
    fill(175);
    for(int j=0; j<size; j++){
      rect(w*j, height - graph[j], w-1, graph[j]);
    }
  }
}
  
