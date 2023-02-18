class tendron
{
  private int myX, myY, newX, newY, myC;
  private float myW, myA;
  public tendron(int x, int y)
  {
    myX = x;
    myY = y;
    myA = PI/3;
    myW = (float)Math.random()*2+2;
    newX = 0;
    newY = 0;
    myC = 0;
    if(myW<0.5)
      myW = 0.5;
    strokeWeight(myW);
    translate(myX,myY);
  }
  public void tendril(int siz)
  {
    newX = 0;
    newY = 0;
    for(int i = 0; i<6; i++)
    {
      strokeWeight(myW);
      beginShape();
      vertex(newX,newY);
      newX+=(int)(siz*Math.random()/10);
      newY+=(int)(siz*Math.random()/10);
      vertex(newX,newY);
      endShape();
    }
  }
  public void cluster(int siz)
  {
    if(siz<50)
    {
      stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      for(int i = 0; i<6; i++)
      {
        tendril(siz);
        rotate(myA);
      }
    }
    else
    {
      for(int i = 0; i<6; i++)
      {
      tendril(siz);
      int tempX = newX;
      int tempY = newY;
      translate(tempX,tempY);
      cluster(siz/3);
      translate(-tempX,-tempY);
      rotate(myA);
      }
    }
  }
}
