class Spaceship extends Floater//extends Floater  
{   
	public Spaceship(){
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -16;
		yCorners[0] = 16;
		xCorners[1] = -4;
		yCorners[1] = 0;
		xCorners[2] = -16;
		yCorners[2] = -16;
		myColor = color(200, 0, 0);
		myCenterX = width/2;
		myCenterY = height/2;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
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

 