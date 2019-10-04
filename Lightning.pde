void setup()
{
  size(500,500);
  background(100,100,200);
  strokeWeight(3);

}

int startx = 250;
int starty = 250;
int endx = 0;
int endy = 250;

void draw()
{

		int r = (int)(Math.random()*255);
		int g = (int)(Math.random()*255);
		int b = (int)(Math.random()*255)+10;

		int xadd = (int)((Math.random()*150)-75);
		int yadd = (int)((Math.random()*150)-75);

		stroke(r,g,b);
		//stroke(80,10,200);

		endx = startx + xadd;
		endy = starty + yadd;
		line(startx,starty,endx,endy);
		startx = endx;
		starty = endy;

		if (endx>500 || endy>500 || endx<0 || endy<0){
			endx=0;
			endy=0;
			startx=mouseX;
			starty=mouseY;
		}


		// if (endx>mouseX+150 || endy>mouseY+150 || endx<mouseX-150 || endy<mouseY-150){
		// 	endx=0;
		// 	endy=0;
		// 	startx=mouseX;
		// 	starty=mouseY;
		// }


		//line(mouseX,mouseY,mouseX+xadd,mouseY+yadd);





}

  
int o = 0;

void mousePressed()
{	int rb = (int)(Math.random()*255);
	int gb = (int)(Math.random()*255);
	int bb = (int)(Math.random()*255);
	background(rb, gb, bb);
	startx = mouseX;
	starty = mouseY;
	endx = 0;
	endy = 250;
	//redraw();
	o++;
	System.out.println("mousepressed " + o + "(" +rb+","+gb+","+bb+")");

}

