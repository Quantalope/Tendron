tendron ten;
boolean on = false;
void setup()
{
translate(500,500);
  size(1000,1000);
  fill(255);
  rect(0,0,1000,1000);
}
void draw()
{
  stroke(255);
  fill(255,255,255,10);
  rect(0,0,1000,1000);
  if(on)
  {
    ten = new tendron((int)(400+Math.random()*200),((int)(400+Math.random()*200)));
    ten.cluster(600);
  }
}
void mousePressed()
{
  translate(-mouseX,-mouseY);
  ten = new tendron(mouseX*2,mouseY*2);
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
