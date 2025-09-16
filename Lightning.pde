int startY = 0;
int startX = 150;
int endY = 0;
int endX = 150;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(10,24,77,13.3);
}
void draw()
{
  noStroke();
  fill(10,24,77,33);
  rect(0,0,300,300);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endX<=height) {
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)((Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startY = endY;
    startX = endX;
  }
}
void mousePressed()
{
  startY = 0;
  endY = 0;
  startX = 150;
  endX = 150;
}
