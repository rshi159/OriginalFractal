public void setup()
{
	size(720,720);
	rectMode(CENTER);
}
public void draw()
{
	fractal(360,360,200);
}
public void fractal(double x, double y, double siz) 
{
	if(siz>16)
	{
		fractal(x+siz/1.7,y+siz/1.7,siz/1.8);
		fractal(x-siz/1.7,y+siz/1.7,siz/1.8);
		fractal(x+siz/1.7,y-siz/1.7,siz/1.8);
		fractal(x-siz/1.7,y-siz/1.7,siz/1.8);
		rect((float)x,(float)y,(float)siz,(float)siz);
	}
	else if(size>4)
	{
		stroke(255);
		fill((int)col,0,0);
		ellipse((float)x,(float)y,(float)siz,(float)siz);
		fractal(360+siz/8*sin((float)(x)),360+siz/8*cos((float)(x)),siz/1.1, col + 8);
	}
	else
	{
		fill(255,255,255);
		rect((float)x,(float)y,(float)siz,(float)siz);

	}
	
}