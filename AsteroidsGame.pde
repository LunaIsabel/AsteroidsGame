//your variable declarations here
Spaceship darthVadar;
Star[] estrella = new Star[500];
ArrayList <Asteroid> asteroides = new ArrayList <Asteroid>();
public void setup() 
{
  //your code here
  size(900, 900);
  darthVadar = new Spaceship();
  for(int i = 0; i < estrella.length; i++){
  	estrella[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
  	asteroides.add(0, new Asteroid());
  }

}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i].show();
  }
  for(int i = 0; asteroides.size(); i++){
  	asteroides.get(i).show();
  	asteroides.get(i).move();
  }

  darthVadar.show();

}

