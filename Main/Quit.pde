 class Quit extends rectangles {
  
  Quit(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end circles
  //
   void draw() {
     fill(Colour);
     rect( Xposition,  Yposition,  Width,  Height);
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
     
   }//end keyPressed
  //
   void keyReleased() {
     
   }//end keyReleased
   //
   void mousePressed() {
     if(mouseX>Xposition && mouseX<Xposition+Width && mouseY>Yposition && mouseY<Yposition+Height) {
       exit();
     }
  }//end mousePressed
}//end rectangles class
