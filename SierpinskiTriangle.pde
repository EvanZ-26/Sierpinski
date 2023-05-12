public void setup()
{
  size(500, 500);
}

public void draw()
{
  background(0);

  sierpinski(0, 500, 500);
}


public void sierpinski(float x, float y, float len){
 
  if (len <=10) {
    fill(255);
    triangle(x, y, x+len, y, x+(len/2), y-len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
