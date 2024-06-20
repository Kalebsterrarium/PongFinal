 class MenuInteract extends circles {
  float[] disapearingX = new float[15];
  float[] disapearingY = new float[15];
  int number =0;
  MenuInteract(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end MenuInteract
  //
   void draw() {
     if ( Shape.get(11).GameStart == false && Shape.get(12).GameStart == false) {
     Xposition= mouseX;
     Yposition = mouseY;
     if(number <= 14) {
       disapearingX[number]=mouseX;
       disapearingY[number]=mouseY;
     } else if (number >= 14) {
       number =0;
     }
     number++;
     fill(Colour);
     for(int i=0;i<14;i++) {
     ellipse(disapearingX[i],disapearingY[i],Width,Height);
     }
     }
   }//end draw
  //
    color colours() {
    color c = 3;
    return c;
  }//end colours
  //
   void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
     
   }//end updateSetup
  //
   void keyPressed() {
     
   }//end keyPressed
  //
    void keyReleased() {
      
    }//end keyReleased
   //
    void mousePressed() {
    
    }//end mousePressed
}//end MenuIteract class
