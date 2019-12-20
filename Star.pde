class Star //note that this class does NOT extend Floater
{
	private int miX, miY;
	public Star(){
		miX = (int)(Math.random() * 500);
		miY = (int)(Math.random() * 500);
	}
	public void show(){
		stroke((int)(Math.random()* 255),(int)(Math.random()* 255), (int)(Math.random()* 255));
		fill(255, 255, 255);
		ellipse(miX, miY, 5, 5);
	}
}
