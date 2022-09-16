void setup() {
  size(500, 500);
  //noLoop();
}

void draw() {
  background(0,255/((float)Math.random()*5),255/((float)Math.random()*5));
  for (int y = 0; y< 550; y+= 100){ //rows
    for(int x = 0; x < 550; x+= 75){ //columns
      for (float z = 5; z > 1; z -= 0.5){ // z used for both size and color brightness
        fill(0,255/z,255/z);
        scale(x, y, z);
      }
    }
  }
}

void scale(int x, int y, float siz) {
  strokeWeight(0);
  beginShape(); //curves
  vertex(x,y);
  vertex(x,y);
  curveVertex(x+8*siz, y+14*siz);
  curveVertex(x+12*siz, y+17*siz);
  curveVertex(x+4*siz, y+23*siz);
  curveVertex(x-5*siz, y+22*siz);
  curveVertex(x-7*siz, y+23*siz);
  curveVertex(x-6*siz, y+6*siz);
  curveVertex(x-2*siz, y-2*siz);
  endShape(CLOSE);
}
