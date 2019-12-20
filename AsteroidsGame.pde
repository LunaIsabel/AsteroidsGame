//your variable declarations here
Spaceship darthVadar;
Star[] estrella = new Star[500];
public void setup() 
{
  //your code here
  size(500, 500);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i] = new Star();
  }
  darthVadar = new SpaceShip();

}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i].show();
  }
  darthVadar.show();
}

