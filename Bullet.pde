class Bullet extends Floater{
	public Bullet(Spaceship darthVadar){
		myCenterX = darthVadar.getX();
		myCenterY = darthVadar.getY();
		myPointDirection = darthVadar.getPointDirection();
		myDirectionX = ;
		myDirectionY = ;

	}
	public void show(){
		fill(255, 255, 255);
		line(0, 0, 10, 0);
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