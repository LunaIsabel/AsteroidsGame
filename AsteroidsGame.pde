//your variable declarations here
Spaceship darthVadar;
Star[] estrella = new Star[500];
ArrayList <Asteroid> asteroides = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  size(500, 500);
  darthVadar = new Spaceship();
  for(int i = 0; i < estrella.length; i++){
  	estrella[i] = new Star();
  }
  for(int i = 0; i < (int)(Math.random()*5) + 5; i++){
  	asteroides.add(new Asteroid());
  }
  for(int i = 0; i < 1; i++){
  	pew.add(new Bullet(darthVadar));
  }

}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < estrella.length; i++){
  	estrella[i].show();
  }
  for(int i = 0; i < asteroides.size(); i++){
  	asteroides.get(i).move();
  	asteroides.get(i).show();
  }

  for(int i = 0; i < pew.size(); i++){
  	pew.get(i).move();
  	pew.get(i).show();
  }
  darthVadar.show();

}

