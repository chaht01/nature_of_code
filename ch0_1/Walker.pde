class Walker{
  int x;
  int y;
  Random generator;
  
  Walker(){
    x = width/2;
    y = height/2;
    generator = new Random();
  }
  
  void display(){
    stroke(0);
    point(x, y);
  }
  
  float getRandGaussian(float sd, float mean, float num){
    return num*sd + mean;
  }
  
  float getNextGaussian(){
    return (float)generator.nextGaussian();
  }
  
  void setGaussianStep(){
    x += getRandGaussian(width/100, 0, getNextGaussian());
    y += getRandGaussian(height/100, 0, getNextGaussian());
  }
  
  void setMontecarloStep(){
    // Levy's flight
    float r = random(1);
    if(r<0.1){
      float xrange = montecarlo()*10;
      float yrange = montecarlo()*10;
      
      x += random(-xrange, xrange);
      y += random(-yrange, yrange);
    }else{
      float xrange = (1-montecarlo())*10;
      float yrange = (1-montecarlo())*10;
      x += random(-xrange, xrange);
      y += random(-yrange, yrange);
    }
  }
  
  void step(){
    setMontecarloStep();
  }
}

