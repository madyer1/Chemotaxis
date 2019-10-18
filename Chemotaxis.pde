 //declare bacteria variables here   
 Bacteria first;
 Bacteria second;
 Bacteria[] colony;
 
 void setup()   
 {     
 	size(1000,1000);
 	frameRate(90);
 	int x = (int)(Math.random()*1000+1);
 	int y = (int)(Math.random()*1000+1);
 	colony = new Bacteria[2000];
 	for(int i=0;i<colony.length;i++){
 		colony[i]= new Bacteria((int)(Math.random()*1000+1), (int)(Math.random()*1000+1));
 	}
 	//first = new Bacteria(250,250);
 	//second = new Bacteria(250,250);
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	background(255); 
 	for(int i=0;i<colony.length;i++){
 		colony[i].move();
 		colony[i].show();
 	}
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
 		if(mouseX>myX){
			myX += (int)(Math.random()*5)-1;
		}else{
			myX += (int)(Math.random()*5)-3;
		}
		if(mouseY>myY){
			myY += (int)(Math.random()*5)-1;
		}else{
			myY += (int)(Math.random()*5)-3;
		}

 	}
 	void show()
 	{
 		fill(r,g,b);
 		ellipse(myX,myY,mySize,mySize);
 	}
 }    