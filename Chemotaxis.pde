Bacteria [] saviors;
int num = 100;
void setup()
{
  size(500, 500);
  
  saviors = new Bacteria[num]; //creates empty apartments with no residents
  int i = 0;
  while (i < saviors.length) {
    saviors[i] = new Bacteria(); //creates actual bacteria
    i++;
  }
  
}
void mousePressed()
  {
    num += 10;
  }
void draw()
{
  //background(0);
  
  for (int i = 0; i< saviors.length; i++) {
    saviors[i].walk();
    saviors[i].show();
  }
}
class Bacteria
{
  int myX, myY, myColor;
  Bacteria()
  {
    myX = myY = 250;
    myColor = color(200,0,0);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3 +(int)((mouseX - myX) * 10/width);
    myY = myY + (int)(Math.random()*7)-3 +(int)((mouseY - myY)* 10/height);
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 30, 30);
  }
  
}
