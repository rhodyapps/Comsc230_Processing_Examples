//     
//
//   Example Shows how to create an Object Class
//     Change N to the number of circle objects you want on the screen
//  

Circle[] myCircles;

//float xPosition = 0;
//float yPosition;
//float xSpeed = 3;
//float ySpeed = 3;

int N = 10;  // how many Circles we want...

void setup()
{
  size(400, 400);
  frameRate(25);

  myCircles = new Circle[N];

  for (int i = 0; i < N; i++)
  {
    myCircles[i] = new Circle();

    myCircles[i].x = random(0, width);
    myCircles[i].y = random(0, height);
    myCircles[i].vx = random(-7, 7);
    myCircles[i].vy = random(-7, 7);
    myCircles[i].radius = random(3, 9);
  }
}

void draw()
{
  background(0);

  for (int i = 0; i < N; i++)
  {
    myCircles[i].run();
  }
}

class Circle
{
  float x;
  float y;
  float vx;
  float vy;
  float radius;

  void run()
  {
    drawShape();

    x = x + vx;
    y = y + vy;

    // the following tests are keeping the Circle within the boundaries of the screen, taking in count the radius of the Circle

    if (x < radius)
    {
      x = radius;
      vx = -vx;
    }
    if (x > width - radius)
    {
      x = width - radius;
      vx = -vx;
    }
    if (y < radius)
    {
      y = radius;
      vy = -vy;
    }
    if (y > height - radius)
    {
      y = height - radius;
      vy = -vy;
    }
  }

  void drawShape()
  {
 // if(x>width){
//xSpeed = -3; 
//}

// checks to see if Circle position is smaller than 0 (left wall)
if(x<0){
//xSpeed = 3; 
}

fill(0,20,220);
ellipse(x,y,50,50);
// The below line says that the value of xPosition will grow by 2 every frame
//x += xSpeed; 
}
  
}
  
