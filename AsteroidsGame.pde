//your variable declarations here
Spaceship darthVadar;
Star[] estrella = new Star[500];
ArrayList <Asteroid> asteroides = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
boolean iswPressed, isaPressed, issPressed;
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
  iswPressed = false;
  isaPressed = false;
  issPressed = false;

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
  }
  if(isaPressed){
  	darthVadar.turn(4);
  }
  if(issPressed){
  	darthVadar.turn(-4);
  }

  darthVadar.show();

}

void keyPressed(){
	if(key == 'w') iswPressed == true;
	if(key == 'a') isaPressed == true;
	if(key == 's') issPressed == true;
	if(key == 'l'){
		pew.add(new Bullet(darthVadar));
	}
}

void keyReleased(){
	if(key == 'w') iswPressed == false;
	if(key == 'a') isaPressed == false;
	if(key == 's') issPressed == false;
}
