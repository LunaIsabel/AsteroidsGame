//your variable declarations here
SpaceShip darthVadar;
Stars[] estrella = new Stars[500];
public void setup() 
{
  //your code here
  size(500, 500);
  background(0);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i] = new Star();
  }
  darthVadar = new SpaceShip();

}
public void draw() 
{
  //your code here
  for(int i = 0; i < estrella.length; i++){
  	stars[i].show();
  }
  darthVadar.show();
}

