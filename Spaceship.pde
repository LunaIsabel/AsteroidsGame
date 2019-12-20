class Spaceship extends Floater//extends Floater  
{   
	public double maxspeedX, maxspeedY;
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

	public Spaceship(){
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -16;
		yCorners[0] = 16;
		xCorners[1] = -4;
		yCorners[1] = 0;
		xCorners[2] = -16;
		yCorners[2] = -16;
		xCorners[3] = 0;
		yCorners[3] = 0;
		myColor = color(200, 0, 0);
		myCenterX = width/2;
		myCenterY = height/2;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
	}
	public void turn(int rotationDegrees){
		myPointDirection += rotationDegrees;
		if(myPointDirection == - 360 || myPointDirection == 360){
			myPointDirection = 0;
		}
	}
	public void accelerate (double cuanto){
		double nRadian = myPointDirection * (Math.PI/180);
		if(type == 'x'){
			myDirectionX += ((cuanto) * Math.cos(Radian));

		}
		if(type == 'y'){
			myDirectionY += ((cuanto) * Math.sin(Radian));
	
		}
	}
	public void decelerate(double cuanto){
		double nRadian = myPointDirection*(MATH.PI/180);
		if(myDirectionX != 0 && myDirectionX > 0.0){
			if(myPointDirection > -180 && myPointDirection < 0){
				myDirectionX -= ((cuanto) * Math.cos(cuanto));
			}else if(myDirectionX != 0 && myDirectionX < 0.0){
				myDirectionX += ((cuanto) * Math.cos(cuanto));
			}
		}
		if(myDirectionY != 0 && myDirectionY > 0.0){
			myDirectionY -= ((cuanto) * Math.sin(cuanto));
		}else if(myDirectionY != 0 && myDirectionY < 0.0){
			if(myPointDirection > -180 && myPointDirection < 0 || (myPointDirection > 180 && myPointDirection < 360)){
				myDirectionY -= ((cuanto) * Math.sin(cuanto));
			}else if((myPointDirection < -180 && myPointDirection > -360) || (myPointDirection < 180 && myPointDirection > 0)){
				myDirectionY += ((cuanto) * Math.sin(cuanto));
			}
		}
	}
}

 