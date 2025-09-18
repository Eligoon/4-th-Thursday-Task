Circle[] circles = new Circle[10];

void setup()
{
  size(700, 400);
  fill(random(40, 200), random(40, 200), random(40, 200));

  circles[0] = new Circle(100, 300);

  for (int i = 1; i < circles.length; i++)
  {
    int x = (int)random(width - 50);
    int y = (int)random(height - 50);
    circles[i] = new Circle(x, y);
  }
}

void draw()
{
  background(255);

  for (int i = 0; i < circles.length; i++)
  {
    circles[i].move();
  }
}
