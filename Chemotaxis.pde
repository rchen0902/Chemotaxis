Walker[] bob;

void setup()
{
  size(750,750);
  bob = new Walker[1000];
  for(int i = 0; i < bob.length; i++)
  {
  bob[i] = new Walker();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
  bob[i].walk();
  bob[i].show();
  }
}

class Walker
{
  int myX, myY;
  {
    myX = 500;
    myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    fill((int)(Math.random()*255+100),(int)(Math.random()*255+100),(int)(Math.random()*255+100));
    ellipse(myX,myY,50,50);
  }
}
