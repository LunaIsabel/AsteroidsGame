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

  if(iswPressed){
  	darthVadar.accelerate(0.15);
  	darthVadar.traveling(true);
  }
  if(isaPressed){
  	darthVadar.turn(4);
  	darthVadar.left(true);
  }
  if(issPressed){
  	darthVadar.turn(-4);
  	darthVadar.right(true);
  }
  if(islPressed){
  	pew.add(new Bullet(darthVadar));
  }





  darthVadar.show();

}

void keyPressed(){
	if(key == 'w') iswPressed == true;
	if(key == 'a') isaPressed == true;
	if(key == 's') issPressed == true;
	if(key == 'l') islPressed == true;
}

void keyReleased(){
	if(key == 'w') iswPressed == false;
	if(key == 'a') isaPressed == false;
	if(key == 's') issPressed == false;
	if(key == 'l') islPressed == false;
}
