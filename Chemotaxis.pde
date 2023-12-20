Walker [] colony;
int x = 150;

void setup()
{
  size(500,500);
  
  colony = new Walker[60];
  for(int i = 0; i<colony.length; i++){
    colony[i] = new Walker();
}
}

void draw()
{
fill(4, 4, 26,50);
rect(0,0,500,500);

  for(int i = 0; i<colony.length; i++){
  colony[i].walk();
  colony[i].show();
  
  if(colony[i].getX() >width)
    {     
      colony[i].setX(0);    
    }    
    else if (colony[i].getX()<0)
    {     
     colony[i].setX(width);    
    }    
    if(colony[i].getY() >height)
    {    
      colony[i].setY(0);    
    } 
    
    else if (colony[i].getY() < 0)
    {     
      colony[i].setY(height);    
    }   
  }
       //wrap around screen    
    
}
  class Walker
{
  int myX, myY, myColor;
  Walker()
  {
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
    myColor = color(247, 205, 79);
  }
    public void setY(int n){
    myY = n;
  }
  public void setX(int n){
    myX = n;
  }
  public int getX(){
    return myX;
  }
  
  public int getY(){
    return myY;
  }

  
  void walk()
  {
    if(mouseX > x){
    myX = myX +(int)(Math.random()*5)-1;
    } else{
    myX= myX+(int)(Math.random()*5)-3;
    }
    myY = myY + (int)(Math.random()*5)-2;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 5, 5);
    fill(247, 157, 79);
   ellipse(myX+(int)(Math.random()*5)-3, myY+(int)(Math.random()*5)-3, 5, 5);
   fill(255,255,255);
    ellipse(myX, myY, 2, 2);
  }
}
