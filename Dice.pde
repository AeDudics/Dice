 void setup()
{
  size(500, 550);
  rectMode(CENTER);
  textAlign(CENTER, BOTTOM);
  textSize(20);
  noLoop();
}

void draw()
{
  background(119, 119, 201);
  int sum = 0;
  for (int y = 50; y <= 500; y = y + 50)
  {
    for (int x = 50; x <= 450; x = x+ 50)
    {
      Die bob = new Die(x, y); 
      bob.show(); 
      bob.roll();
      sum = sum + bob.dSum;
    }
  }
  fill(0,0,0);
  text(sum, 250, 550);
}

void mousePressed()
{
  redraw();
}

class Die 
{  
  int mySize, myX, myY, dSum; 
  Die(int x, int y)
  {  
    mySize = 50; 
    myX = x; 
    myY = y;
    dSum = (int)(Math.random()*6)+1;
  }
  void roll()
  {  
    fill(0); 
    if (dSum == 1)
    {
      fill(255,0,0);
      ellipse(myX, myY, 10, 10);
    }
    if (dSum == 2)
    {
      fill(0,0,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10);
    }
    if (dSum == 3)
    {
      fill(0,0,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX, myY, 10, 10);
    }
    if (dSum == 4)
    {
      fill(0,0,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX-15, myY+15, 10, 10); 
      ellipse(myX+15, myY-15, 10, 10);
    }
    if (dSum == 5)
    {
      fill(0,0,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX, myY, 10, 10); 
      ellipse(myX-15, myY+15, 10, 10); 
      ellipse(myX+15, myY-15, 10, 10);
    }
    if (dSum == 6)
    {
      fill(0,0,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX-15, myY, 10, 10); 
      ellipse(myX+15, myY, 10, 10); 
      ellipse(myX-15, myY+15, 10, 10); 
      ellipse(myX+15, myY-15, 10, 10);
    }
  }
  void show()
  {   
    fill(255); 
    rect(myX, myY, mySize, mySize, 25);
  }
}
