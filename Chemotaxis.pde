 //declare bacteria variables here   
 Bacteria first;
 Bacteria second;
 Bacteria[] prey;
 Bacteria[] predator;
 
 void setup()   
 {     
 	size(1000,1000);
 	frameRate(70);
 	prey = new Bacteria[1000];
 	for(int i=0;i<prey.length;i++){
 		prey[i]= new Bacteria((int)(Math.random()*500)+250, (int)(Math.random()*500)+250, 0, 255);
 	}
 	predator = new Bacteria[1000];
 	
 	for(int i=0;i<predator.length;i++){
 		predator[i]= new Bacteria((int)(Math.random()*500)+250, (int)(Math.random()*500)+250,255,0);
 	}
 	//first = new Bacteria(250,250);
 	//second = new Bacteria(250,250);
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	background(0); 
 	for(int i=0;i<prey.length;i++){
 		prey[i].move();
 		prey[i].show();
 	}
 	for(int i=0;i<predator.length;i++){
 		predator[i].move();
 		predator[i].show();
 	}
 }  
 class Bacteria    
 { 
 	int myX,myY,mySize,myR,myB;
 	Bacteria(int x, int y, int r, int b)
 	{
 		myX = x;
 		myY=y;
 		mySize=10;
 		myR = r;
 		myB=b;
 	}
 	void move()
 	{
 		myX= myX+(int)(Math.random()*3-2);
 		myY= myY+(int)(Math.random()*3-1);


 	}
 	void show()
 	{
 		fill(myR,0,myB);
 		ellipse(myX,myY,mySize,mySize);
 	}
 }    