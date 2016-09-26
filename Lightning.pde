int startX=0;
int endX;
int startY=200;
int endY;

void ghost()
{fill (255,255,255);
  ellipse(200,100,100,100);
  fill(0,0,0);
  ellipse(180,90,10,10);
  ellipse(220,90,10,10);
  arc(200,120,40,40,0,PI);
}
void setup()
{
  size(400,400);
  strokeWeight(1);
  background(0,0,0);
}
void draw()
{
  stroke ((int)(Math.random()*45)+210, (int)(Math.random()*45)+210, (int)(Math.random()*210));
  while (endX<1000)
  {
  endX=startX+(int)(Math.random()*9);
  endY=startY+(int)(Math.random()*18-9);
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;  
}

}
void mousePressed()
{
  startX=0;
  startY=200;
  endX=0;
  endY=0;
  fill(0,0,0);
  rect(0,0,400,400);
 ghost();
}
