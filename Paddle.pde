class Paddles extends rectangles {
 
  Paddles(float Xposition, float Yposition, float Width, float Height, color Colour) {
     super(Xposition,Yposition,Width,Height,Colour);
  }
  //
  void draw() {
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float vari1, float vari2, float vari3) {
    
  }//end updatesetup
  
}//end Paddles
