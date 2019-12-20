//your variable declarations here
SpaceShip ship = new SpaceShip();
Stars[] estrella = new Stars[500];
public void setup() 
{
  //your code here
  size(500, 500);
  background(0);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i] = new Star();
  }

}
void opacidad(){
	fill(0, 0, 0, 70);
	rect(0, 0, 900, 900);
}
public void draw() 
{
  //your code here
  opacidad();
  for(int i = 0; i < estrella.length; i++){
  	stars[i].show();
  }
  ship.show();

}

