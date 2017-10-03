NormalParticle[] stars;
void setup()
{
	size(500, 500);
	stars = new NormalParticle[100];
	for(int i = 0; i < stars.length; i++)
	{
		stars[i] = new NormalParticle();
	}

}
void draw()
{
	background(0);
	for(int i = 0; i < stars.length; i++)
	{
		stars[i].show();
		stars[i].move();
	}

}
class NormalParticle implements Particle
{
	int myColor;
	double myX, myY, mySpeed, myAngle;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*5;
		myAngle = Math.random()*2*PI;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	public void move()
	{
		myX = myX + (mySpeed * Math.cos(myAngle));
		myY = myY + (mySpeed * Math.sin(myAngle));
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY, 5, 5);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
int myColor;
	double myX, myY, mySpeed, myAngle;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*5;
		myAngle = Math.random()*2*PI;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	public void move()
	{
		myX = myX + (mySpeed * Math.cos(myAngle));
		myY = myY + (mySpeed * Math.sin(myAngle));
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		quad((float))
	}

}
class JumboParticle //uses inheritance
{
	//your code here
}

