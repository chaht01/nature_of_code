class Circle{
  float size, x, y;
  Circle(){
    x = width/2;
    y = height/2;
    size = 50;
  }
  
  void step(float _x, float  _y, float _size){
    x += _x;
    y += _y;
    size = _size;
  }
  void display(){
    noStroke();
    fill(0, 10);
    ellipse(x, y, size, size);
  }
}
  
