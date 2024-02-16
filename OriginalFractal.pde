public void setup() {
    size(512, 512);
    background(255);
    stroke(0);
}

public void draw() {
    color initialColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    round(256, 256, 512, initialColor);
}

public void round(int x, int y, int rad, color currentColor) {
    fill(currentColor);
    ellipse(x, y, rad, rad);

    if (rad >= 32) {    
        color childColor1 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
        color childColor2 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
        color childColor3 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
        color childColor4 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

        round(x - rad/4 - rad/32 - rad/64 + rad/256, y, rad/4 + rad/8 + rad/32 + rad/256, childColor1);
        round(x + rad/4 + rad/32 + rad/64 - rad/256, y, rad/4 + rad/8 + rad/32 + rad/256, childColor2);
        round(x, y - rad/4 - rad/32 - rad/64 + rad/256, rad/4 + rad/8 + rad/32 + rad/256, childColor3);
        round(x, y + rad/4 + rad/32 + rad/64 - rad/256, rad/4 + rad/8 + rad/32 + rad/256, childColor4);
        
        // You can also pass the same color to the center circle or generate a new one if you prefer
        color centerColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
        round(x, y, rad/8 + rad/16 - rad/64, centerColor);
    }
}
