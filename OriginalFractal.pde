public void setup()
{
	size(720,720);
}
public void draw()
{
	fractal(360,360,500);
}
public void fractal(double x, double y, double siz) 
{
	if(siz<80)
	{
		ellipse((float)x,(float)y,(float)siz,(float)siz);
	}
	else
	{
		fractal(x,y,siz/6.5);
		fractal(360+(360-siz)*Math.cos(.5*x*PI/180),360+(360-siz)*Math.sin(.5*x*PI/180),siz/1.3);
		fractal(360-(360-siz)*Math.cos(.5*x*PI/180),360-(360-siz)*Math.sin(.5*x*PI/180),siz/1.3);
	}
	
}