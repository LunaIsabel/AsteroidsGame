class Asteroid extends Floater{
	private double rotationSpeed;
	public Asteroid(){
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];	
		xCorners[0] = 0;
		yCorners[0] = 12;
		xCorners[1] = 12;
		yCorners[1] = 0;
		xCorners[2] = 12;
		yCorners[2] = -4;	
		xCorners[3] = 8;
		yCorners[3] = -8;
		xCorners[4] = 4;
		yCorners[4] = -8;
		xCorners[5] = 0;
		yCorners[5] = -4;
		xCorners[6] = -4;
		yCorners[6] = -8;		
		xCorners[7] = -8;
		yCorners[7] = -8;	
		xCorners[8] = -12;
		yCorners[8] = -4;	
		xCorners[9] = -12;
		yCorners[9] = 0;	
		myColor = color(0, 255, 0);
		myCenterY = (int)(Math.random()* 500);
		myCenterX = (int)(Math.random()* 500);
		myDirectionY = (int)(Math.random()* 5) - 2;
		myDirectionX = (int)(Math.random()* 5) - 2;
		myPointDirection = 0;
		rotationSpeed = (int)(Math.random()* 16) - 8;


	}
	public void move(){
		super.move();
		myPointDirection += rotationSpeed;
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
		return myCenterY;
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