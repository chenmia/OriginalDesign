void setup()
{
  size(500, 600);
  background(255, 255, 255);
  fill(0, 0, 0);
  textSize(20);
  text("Click to make the peach happy!", 120, 150);
}
int x = 2;
void draw()
{ 

  leaves();
  peach();
  sadFace();
}

void peach()
{ 
  fill(253, 209, 191);
  stroke(250, 170, 150);
  strokeWeight(7);
  bezier(125*x, 125*x, 35*x, 190*x, 120*x, 230*x, 135*x, 190*x);
  bezier(125*x, 125*x, 215*x, 170*x, 150*x, 230*x, 120*x, 200*x);
}
void leaves()
{  
  fill(0, 200, 0);
  strokeWeight(4);
  stroke(0, 150, 0);
  triangle(95*x, 220*x, 140*x, 195*x, 110*x, 190*x);
  triangle(155*x, 220*x, 110*x, 190*x, 140*x, 190*x);
}
float mouth = 2;
int cheeks = 1;
float redCheeks = 0;
void sadFace()
{
  fill(0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(1);
  ellipse(110*x, 165*x, 5*x, 5*x);
  ellipse(145*x, 165*x, 5*x, 5*x);
  noFill();
  strokeWeight(3);
  bezier(122.5*x, 173*x, 125*x, 172*mouth, 130*x, 172*mouth, 132.5*x, 173*x);
  fill(135*redCheeks, 206*cheeks, 235*cheeks);
  noStroke();
  ellipse(100*x, 170*x, 5*x, 5*x);
  ellipse(155*x, 170*x, 5*x, 5*x);
}

void sparkles()
{
  int r = 3;
  int u = -195;
  int t = -300;
  fill(255, 255, 0);
  noStroke();
  beginShape();
  vertex(100*r+u, 200*r+t);
  vertex(105*r+u, 195*r+t);
  vertex(100*r+u, 190*r+t);
  vertex(95*r+u, 195*r+t);
  vertex(100*r+u, 200*r+t);
  endShape(CLOSE);

  u = -50;
  t = -380;
  beginShape();
  vertex(100*r+u, 200*r+t);
  vertex(105*r+u, 195*r+t);
  vertex(100*r+u, 190*r+t);
  vertex(95*r+u, 195*r+t);
  vertex(100*r+u, 200*r+t);
  endShape(CLOSE);

  u = 95;
  t = -300;
  beginShape();
  vertex(100*r+u, 200*r+t);
  vertex(105*r+u, 195*r+t);
  vertex(100*r+u, 190*r+t);
  vertex(95*r+u, 195*r+t);
  vertex(100*r+u, 200*r+t);
  endShape(CLOSE);

  u = -130;
  t = -360;
  beginShape();
  vertex(100*r+u, 200*r+t);
  vertex(105*r+u, 195*r+t);
  vertex(100*r+u, 190*r+t);
  vertex(95*r+u, 195*r+t);
  vertex(100*r+u, 200*r+t);
  endShape(CLOSE);

  u = 35;
  t = -360;
  beginShape();
  vertex(100*r+u, 200*r+t);
  vertex(105*r+u, 195*r+t);
  vertex(100*r+u, 190*r+t);
  vertex(95*r+u, 195*r+t);
  vertex(100*r+u, 200*r+t);
  endShape(CLOSE);
}

void friendPeaches()
{
  int a=-20;
  int b=170;
  fill(253, 209, 191);
  stroke(250, 170, 150);
  strokeWeight(7);
  bezier(125+a, 175+b, 35+a, 240+b, 120+a, 280+b, 135+a, 240+b);
  bezier(125+a, 175+b, 215+a, 210+b, 150+a, 280+b, 120+a, 250+b);

  a=170;
  b=270;
  fill(253, 209, 191);
  stroke(250, 170, 150);
  strokeWeight(7);
  bezier(125+b, 175+a, 35+b, 240+a, 120+b, 280+a, 135+b, 240+a);
  bezier(125+b, 175+a, 215+b, 210+a, 150+b, 280+a, 120+b, 250+a);
}


void mouseClicked()
{ 
  mouth = 2.093;
  cheeks = 0;
  redCheeks = 1.88;
  sparkles();
  friendPeaches();
}




