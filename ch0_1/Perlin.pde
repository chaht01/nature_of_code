class Perlin {
  float[] t; // ticks for noise. Size is to dimension of noise;
  int dim;
  Perlin(int _dim){
    dim = _dim;
    t = new float[dim];
    for(int i=0; i<dim; i++){
      t[i] = random(10);
    }
  }
  
  float output(){
    float ret;
    if(dim == 1){
      ret = noise(t[0]);
    }else if(dim == 2){
      ret = noise(t[0], t[1]);
    }else {
      ret = noise(t[0], t[1], t[2]);
    }
    for(int i=0; i<dim; i++){
      t[i] += 0.01;
    }
    return ret;
  }  
}
