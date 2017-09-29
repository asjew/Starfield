NormalParticle[] stars;
void setup()
{
	size(500, 500);
	stars = new NormalParticle[50];
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
class NormalParticle
{
	int myColor;
	double myX, myY, mySpeed, myAngle;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		mySpeed = 20;
		myAngle = 2;
		myColor = (int)(Math.random()*256);
	}
	void move()
	{
		myX = myX + (myAngle * Math.cos(mySpeed));
		myY = myY + (myAngle * Math.sin(mySpeed));
	}
	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX, (float)myY, 15, 15);
	}

}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

