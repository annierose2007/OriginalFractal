public void setup() {
  background(200, 156, 196);
  size(650, 650);
  rectMode(CENTER);
  frameRate(60);
}
public void draw() {
  noStroke();
  Fractal(180, 330, 460, 45);
  Fractal(190, 340, 460, 65);
  Fractal(200, 350, 450, 75);
  fill(0, 0, 255);
  Fractal(210, 360, 460, 85);
  Fractal(220, 370, 460, 95);
  Fractal(230, 380, 460, 105);
}      


public void Fractal(int x, int y, int siz, int hey) {
  noStroke();
  fill(hey+170, hey+130, hey+170);
  beginShape();
  vertex(x, y-100);
  vertex(x+33, y-33);
  vertex(x+100, y-30);
  vertex(x+45, y+15);
  vertex(x+60, y+100);
  vertex(x, y+40);
  vertex(x-60, y+100);
  vertex(x-45, y+15);
  vertex(x-100, y-30);
  vertex(x-33, y-33);
  vertex(x, y-100);
  endShape(CLOSE);
  if (siz>25) {
    Fractal(x-200, y, siz/2, hey);
    Fractal(x+200, y, siz/2, hey);
    Fractal(x-100, y+130, siz/2, hey);
    Fractal(x+100, y-130, siz/2, hey);
  }
}
