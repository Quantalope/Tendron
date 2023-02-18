tendron ten;
boolean on = false;
void setup()
{
  size(1000,1000);
  fill(255);
  rect(0,0,1000,1000);
}
void draw()
{
  strokeWeight(0);
  fill(255,255,255,50);
  //rect(0,0,1000,1000);
  if(on)
  {
    ten = new tendron((int)(400+Math.random()*200),((int)(400+Math.random()*200)));
    ten.cluster(600);
  }
}
void mousePressed()
{
  ten = new tendron((int)mouseX,(int)mouseY);
  ten.cluster(600);
}
void keyPressed()
{
  if(!on)
  {
    on = true;
  }
  else
  {
    on = false;
  }
}
