class Bullet extends Floater{
	public Bullet(Spaceship darthVadar){
		myCenterX = darthVadar.getX();
		myCenterY = darthVadar.getY();
		myPointDirection = darthVadar.getPointDirection();
		double dRadians = myPointDirection * (Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
	}
	public void show(){
		fill(255, 255, 255);

	//translate the (x,y) center of the ship to the correct position
        translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
        float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
        rotate(dRadians);
    
        line(0, 0, 10, 0);

    //"unrotate" and "untranslate" in reverse order
        rotate(-1*dRadians);
        translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}


	public void setX(int x){
		myCenterX = x;
	}
	public int getX(){
		return myCenterX;
	}
	public void setY(int y){
		myCenterY = y;
	}
	public int getY(){
		return myCenterY = y;
	}
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public double getDirectionX(){
		return myDirectionX;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public double getDirectionY(){
		return myDirectionY;
	}
	public void setPointDirection(int degrees){
		myPointDirection = degrees;
	}
	public double getPointDirection(){
		return myPointDirection;
	}
}