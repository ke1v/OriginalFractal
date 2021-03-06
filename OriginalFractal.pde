void setup(){
  size(1000, 1000);
  fractalInit(500, 600, 575);
}

void draw(){
}

void fractalInit(int centerX, int centerY, int radius) {
  fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  polygon(centerX, centerY, radius, 3);
  fractal(centerX, centerY, radius/2, 4);
}

void fractal(int centerX, int centerY, int radius, int points) {
  if (points < 10 && points > 2) {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    polygon(centerX, centerY, radius, points);
    fractal(centerX, centerY, radius/2, points+1);
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = 6.28 / npoints;
  float startingAngle = (npoints%2==0) ? angle/2 : angle/4;
  beginShape();
  for (float a = startingAngle; a < 6.28; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
