int w = 300;
float bingo = 0;
public void setup() {
  size (600, 600);
  background(255);
}

public void draw() {
  w+=2;
  if (w>=1200) w = 600;
  translate(300,300);
  stroke(255);
  snowglobe(w);
}

public void snowglobe(int w) {
  bingo+=0.03;
  if (bingo == 360) bingo = 0;
  rotate(bingo);
  fill (176,212,229);
  arc (0,0,w+300,w+300,0,THIRD_PI);
  arc (0,0,w+300,w+300,2*THIRD_PI,PI);
  arc (0,0,w+300,w+300,PI+THIRD_PI,PI+2*THIRD_PI);
  fill (245,198,207);
  arc (0,0,w+300,w+300,THIRD_PI,2*THIRD_PI);
  arc (0,0,w+300,w+300,PI,PI+THIRD_PI);
  arc (0,0,w+300,w+300,PI+2*THIRD_PI,TWO_PI);
  rotate(-bingo);
  rotate(-bingo);
  fill (240,237,162);
  arc (0,0,w,w,0,THIRD_PI);
  arc (0,0,w,w,2*THIRD_PI,PI);
  arc (0,0,w,w,PI+THIRD_PI,PI+2*THIRD_PI);
  fill (162,240,174);
  arc (0,0,w,w,THIRD_PI,2*THIRD_PI);
  arc (0,0,w,w,PI,PI+THIRD_PI);
  arc (0,0,w,w,PI+2*THIRD_PI,TWO_PI);
  rotate(bingo);
  rotate(bingo);
  fill (176,212,229);
  arc (0,0,w-300,w-300,0,THIRD_PI);
  arc (0,0,w-300,w-300,2*THIRD_PI,PI);
  arc (0,0,w-300,w-300,PI+THIRD_PI,PI+2*THIRD_PI);
  fill (245,198,207);
  arc (0,0,w-300,w-300,THIRD_PI,2*THIRD_PI);
  arc (0,0,w-300,w-300,PI,PI+THIRD_PI);
  arc (0,0,w-300,w-300,PI+2*THIRD_PI,TWO_PI);
  rotate(-bingo);
  if (w >= 600) {
    snowglobe(w-600);
  }
}
