void setup()
{
  size(500,500);
  background(100,100,200);
  strokeWeight(3);

}

int startx = 0;
int starty = 250;
int endx = 0;
int endy = 250;

void draw()
{


	//while (endx<500 || endy<500){
		// int startx = (int)(Math.random()*500);
		// int starty = (int)(Math.random()*500);
		// int endx = 0;
		// int endy = 0;

		int r = (int)(Math.random()*255)+10;
		int g = (int)(Math.random()*255)-10;
		int b = (int)(Math.random()*255)+10;

		int xadd = (int)(Math.random()*20);
		int yadd = (int)((Math.random()*40)-20);

		stroke(r,g,b);
		endx = startx + xadd;
		endy = starty + yadd;
		line(startx,starty,endx,endy);
		startx = endx;
		starty = endy;

		if (endx>500 || endy>500){
			endx=0;
			endy=250;
			startx=0;
			starty=250;
		}
	//}
}


int o = 0;

void mousePressed()
{	
	startx = 0;
	starty = 250;
	endx = 0;
	endy = 250;
	//redraw();
	o++;
	System.out.println("mousepressed " + o);

}

