 int x = 200;
 int y = 200;
 int siz = 200;
public void setup()
{
  background(0);
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  fractal(250,250,480);
}
public void mouseClicked()//optional
{ 
}
public void fractal(int x, int y, int siz) 
{
   fill(255);
  ellipse(x,y,siz,siz); 
 if (siz>10){
   fractal(x-siz/2,y,siz/2);  
   fractal(x+siz/2,y,siz/2);
   fractal(x,y+siz/2,siz/2);  
   fractal(x,y-siz/2,siz/2);  
   fractal(x,y+siz/2,siz/5);  
   fractal(x,y-siz/2,siz/5);  
  }
}
