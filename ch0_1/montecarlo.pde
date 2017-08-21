float montecarlo() {
  float x, y;
  float p;
  do{
    x = random(1);
    y = random(1);
    p = x;
    if(p > y){
      return x;
    }
  }while(true);
}
