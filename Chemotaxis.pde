 //declare bacteria variables here   
 Bacteria[] prey;
 Bacteria predator;
 
 void setup()   
 {     
 	size(1000,1000);
 	frameRate(100);

 	prey = new Bacteria[200];
 	for(int i=0;i<prey.length;i++){
 		prey[i]= new Bacteria((int)(Math.random()*1000)+1, (int)(Math.random()*1000)+1, 0, 255,10,7);
 	}
 	
 	predator= new Bacteria(500, 500,255,0,25,9);
 	
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	background(0); 
 	for(int i=0;i<prey.length;i++){
 		prey[i].move();
 		prey[i].show();
 	}
 		predator.move();
 		predator.show();
 	for(int i=0;i<prey.length;i++){
 		if(dist(predator.myX,predator.myY,prey[i].myX,prey[i].myY)<=20){
 			prey[i].myR = prey[i].myB = 0;
 			prey[i].myX = prey[i].myY = 2000;
 		}
 	}

 }  
 class Bacteria    
 { 
 	int myX,myY,mySize,myR,myB,mySpeed;
 	Bacteria(int x, int y, int r, int b, int size, int speed)
 	{
 		myX = x;
 		myY = y;
 		mySize = size;
 		myR = r;
 		myB = b;
 		mySpeed = speed;
 	}
 	void move()
 	{
 		myX= myX+(int)(Math.random()*mySpeed)-((mySpeed-1)/2);
 		myY= myY+(int)(Math.random()*mySpeed)-((mySpeed-1)/2);
 		for(int i=0;i<prey.length;i++){
 			if(dist(predator.myX,predator.myY,prey[i].myX,prey[i].myY)<= 100){
 				if(predator.myX<prey[i].myX && predator.myY<prey[i].myY){
 					predator.myX += 2;
 					predator.myY += 2;
 				}
 				if(predator.myX>prey[i].myX && predator.myY>prey[i].myY){
 					predator.myX -= 2;
 					predator.myY -= 2;
 				}
 				if(predator.myX<prey[i].myX && predator.myY>prey[i].myY){
 					predator.myX += 2;
 					predator.myY -= 2;
 				}
 				if(predator.myX>prey[i].myX && predator.myY<prey[i].myY){
 					predator.myX -= 2;
 					predator.myY += 2;
 				}
 			}
 			
 		}
 		if(predator.myX>=990){
 			predator.myX -= 2;
 		}
 		if(predator.myX<=10){
 			predator.myX += 2;
 		}
 		if(predator.myY>=990){
 			predator.myY -= 2;
 		}
 		if(predator.myY<=10){
 			predator.myY += 2;
 		}

 	}
 	void show()
 	{
 		fill(myR,0,myB);
 		ellipse(myX,myY,mySize,mySize);
 	}
 }    