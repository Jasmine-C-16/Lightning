void setup()
{
  size(500,500);
  background(200,200,200);
  strokeWeight(5);

}

int startx = 0;
int starty = 0;
int endx = 0;
int endy = 0;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int xadd = (int)(Math.random()*2);
int yadd = (int)(Math.random()*2);

void draw()
{
	stroke(r,g,b);

	while (endx<500 || endy<500){
		stroke(r,g,b);
		endx = endx + xadd;
		endy = endy + yadd;
		line(startx,starty,endx,endy);
		startx = endx;
		starty = endy;

	}
}

void mousePressed()
{
	startx = mouseX;
	starty = mouseY;
	draw();
}

