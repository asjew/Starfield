Particle[] stars;
void setup()
{
  size(500, 500);
  stars = new Particle[500];
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new NormalParticle();
    stars[0] = new OddballParticle();
    stars[1] = new JumboParticle();
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
class OddballParticle extends NormalParticle
{
  public void move()
  {
    myX = myX + (mySpeed * Math.cos(myAngle));
    myY = myY + (mySpeed * Math.sin(myAngle));
  }
  public void show()
  {
    stroke(255);
    fill(myColor);
	rect((float)myX, (float)myY, 30, 30);
	/*  beginShape();
  vertex(25, 10);
  vertex(18, 20);
  vertex(32, 20);
  endShape(CLOSE);
  beginShape();
  vertex(32, 20);
  vertex(39, 20);
  vertex(32, 30);
  endShape();
  */
  }

}
class JumboParticle extends NormalParticle
{
  public void move()
  {
    myX = myX + (mySpeed * Math.cos(myAngle));
    myY = myY + (mySpeed * Math.sin(myAngle));
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float)myX - 25 ,(float)myY -23, 30, 30); //left ear
    ellipse((float)myX + 25,(float)myY - 23, 30, 30); // right ear
    ellipse((float)myX,(float)myY, 50, 50);
  }
}

