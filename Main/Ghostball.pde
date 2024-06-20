class ghostball extends circles {
 
  
    ghostball(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end returnmenu
  //
  void draw() {
    Xposition = Shape.get(5).Xposition;
    Yposition = displayHeight - Shape.get(5).Yposition;
    
     if (Shape.get(11).GameStart== true && Shape.get(12).GameStart== false && GameStart == true ) { 
    fill(Shape.get(5).Colour,170);
    ellipse(Xposition,Yposition,Width,Height);
 if(timer >= 0)  {
   timer-=0.5;
 } else {
 GameStart = false;
 
     }
      
     }
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }
  //
  void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    
  }//end updateSetup
  //
  void keyPressed() {
    
  }// keyPressed
  //
  void keyReleased() {
    
  }//end keyReleased
  //
  void mousePressed() {
   
  }//end mousePressed
  
  
  
  
  
  
  
}//end returnmenu class
