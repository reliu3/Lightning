int startY = 0;
int startX = 150;
int endY = 0;
int endX = 150;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(23,23,23);
  frameRate(30);
  noStroke();
}
void draw()
{
  noStroke();
  //background
  fill(23,23,23,70);
  rect(0,0,300,300);
  
  //lightining bolt
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endX<=height) {
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)((Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startY = endY;
    startX = endX;
  }
  
 
 noStroke();
 //rain
 fill(160,160,160);
 int i = 0;
 while(i<25) {
   ellipse((int)(Math.random()*width), (int)(Math.random()*height), 3,7);
   i++;
 }
 
 
 //person body
 fill(216,216,214);
 ellipse(130,241,25,45);
 
 //person head
 fill(255,255,255);
 ellipse(130,207,25,25);
 
 
 //umbrlla
 fill(93,93,92);
 arc(150,200,100,100,radians(180),radians(360));
 fill(62,62,62);
 rect(147,200, 6,50);
 
 //person arm
 fill(255,255,255);
 ellipse(150,230,10,10);

 //ground
 fill(20,20,20);
 rect(0,255,width,height-255);
}


void mousePressed()
{
  startY = 0;
  endY = 0;
  startX = 150;
  endX = 150;
}

//void mouseClicked() {
//  System.out.println(mouseX +" "+ mouseY);
//}
