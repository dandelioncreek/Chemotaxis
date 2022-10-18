Walker bob;
Walker [] hillbillies = {new Walker(), new Walker(), new Walker()}; //not good way since tedious. initialization and declaration are in same line
Walker [] saviors;

void setup()
{
  size(500, 500);
  bob = new Walker();
  saviors = new Walker[1000]; //creates empty apartments with no residents
  int i = 0;
  while (i < saviors.length) {
    saviors[i] = new Walker(); //creates actual walkers
    i++;
  }
}
void draw()
{
  //background(0);
  bob.show();
  bob.walk();
  hillbillies[0].walk();
  hillbillies[0].show();
  hillbillies[1].walk();
  hillbillies[1].show();
  hillbillies[2].walk();
  hillbillies[2].show();
  for (int i = 0; i< saviors.length; i++) {
    saviors[i].walk();
    saviors[i].show();
  }
}
class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3 +(int)((mouseX - myX) * 10/width);
    myY = myY + (int)(Math.random()*7)-3 +(int)((mouseY - myY)* 10/height);
  }
  void show()
  {
    ellipse(myX, myY, 30, 30);
  }
}
