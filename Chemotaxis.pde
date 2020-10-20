Chemo[] tay = new Chemo[10];
void setup()
{
  size(400,400);
  for (int i = 0; i < tay.length; i++)
  {
    tay[i] = new Chemo();
  }
}
void draw()
{
  background(230,230,250);
  for (int i = 0; i < tay.length; i++)
  {
    tay[i].move();
    tay[i].show();
  }
}
class Chemo 
{
  int myColor;
  int myX;
  int myY;
  int mySize;
  float mySpeed;
  Chemo()
  {
    myColor = color((int)(Math.random()*140)+100,(int)(Math.random()*140)+100,(int)(Math.random()*140)+100);
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (int)(Math.random()*80)+20;
    mySpeed = mySize/9.0;
  }
  void move()
  {
    myY = (int)(myY + mySpeed);
    myX = myX + (int)(Math.random()*3)-1;
    if (myY > 500)
    {
      myY = -100;
    }
  }
  void show()
  {
    fill(222,184,135);
    stroke(222,184,135);
    strokeWeight(1);
    ellipse(myX,myY,20,20);
    ellipse(myX-17,myY+10,20,20);
    ellipse(myX+17,myY+10,20,20);
    ellipse(myX,myY+40,20,20);
    ellipse(myX-17,myY+30,20,20);
    ellipse(myX+17,myY+30,20,20);
    
    fill(myColor); 
    stroke(myColor); 
    ellipse(myX,myY,12,12);
    ellipse(myX-17,myY+10,12,12);
    ellipse(myX+17,myY+10,12,12);
    ellipse(myX,myY+40,12,12);
    ellipse(myX-17,myY+30,12,12);
    ellipse(myX+17,myY+30,12,12);
    
  }
}
