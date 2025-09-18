
class Circle
{
  int xPos;
  int yPos;
  int dx =(int)random(1, 6); //speed
  int dy = (int)random(2, 5); //speed


  Circle(int xPos, int yPos)
  {
    this.xPos = xPos;
    this.yPos = yPos;
  }

  void move()
  {
    xPos += dx;
    yPos += dy;

    // If circle hits left or right edge, bounce back
    if (( xPos <= 0 ) ||( xPos >= width ))
    {
      dx *= -1; // reverse horizontal direction
    }

    if (yPos <= 0 || yPos >= height)
    {
      dy *= -1;
    }

    display();
  }

  void display()
  {
    noStroke();

    ellipse(this.xPos, this.yPos, 50, 50);
  }
}
