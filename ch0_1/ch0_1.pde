import java.util.Random;
Random generator;
Walker w;
Circle c;
Perlin p1;
Perlin p2;
Perlin p3;
Distribution d;

void setup(){
  size(640, 360);
  generator = new Random();
  w = new Walker();
  d = new Distribution(20);
  c = new Circle();
  p1 = new Perlin(1);
  p2 = new Perlin(1);
  p3 = new Perlin(1);
  background(255);
}

float getScatterDist(float sd, float mean, float num){
  return num*sd+mean;
}

void draw(){
 /**
   * mean 320, sd 60, x is random number from gaussian
   * mul(x , sd) + mean
   **/
 /*  
  float x = getScatterDist(60, width/2, (float)generator.nextGaussian());
  float y = getScatterDist(60, height/2, (float)generator.nextGaussian());
  noStroke();
  fill(0, 10);
  ellipse(x, y, 16, 16);
  */
  
  /* Display for probability distribution */
//  d.display(int(montecarlo()*20));
  
  /* Display for randomly moving point */
//  w.step();
//  w.display();

  /* Display for Perlin noised circle's track */
  c.step(map(p1.output(), 0, 1, -1, 1), 
    map(p2.output(), 0, 1, -1, 1),
    map(p3.output(), 0, 1, 0, 50));
  c.display();
}
