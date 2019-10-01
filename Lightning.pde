void setup()
{
  size(500,500);
  background(200,200,200);
  strokeWeight(5);

}

int startx = 0;
int starty = 50;
int endx = 0;
int endy = 0;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
// void color(){
// 	int r = (int)(Math.random()*255);
// 	int g = (int)(Math.random()*255);
// 	int b = (int)(Math.random()*255);
// }

// void g() {
// (int)(Math.random()*255);
// }

// void b() {
// (int)(Math.random()*255);
// }

int xadd = (int)(Math.random()*9);
int yadd = (int)((Math.random()*18)-9);

void draw()
{
	//color();

	while (endx<500 || endy<500){
		stroke(r,g,b);
		endx = startx + xadd;
		endy = startx + yadd;
		line(startx,starty,endx,endy);
		startx = endx;
		starty = endy;

	}
}

void mousePressed()
{
	startx = 0;
	starty = 50;
	endx=0;
	endy=0;
}

