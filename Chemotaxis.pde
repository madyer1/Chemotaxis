 //declare bacteria variables here   
 Bacteria first;
 Bacteria second;
 void setup()   
 {     
 	size(500,500);
 	frameRate(70);
 	first = new Bacteria(250,250);
 	second = new Bacteria(250,250);
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	background(255); 
 	first.move();
 	first.show();
 	second.move();
 	second.show();
 }  
 class Bacteria    
 { 
 	int myX,myY,r,g,b,mySize;
 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY=y;
 		mySize=10;
 		r=(int)(Math.random()*255+1);
 		g=(int)(Math.random()*255+1);
 		b=(int)(Math.random()*255+1);
 	}
 	void move()
 	{
 		myX += (int)(Math.random()*3)-1;
 		myY += (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(r,g,b);
 		ellipse(myX,myY,mySize,mySize);
 	}
 }    