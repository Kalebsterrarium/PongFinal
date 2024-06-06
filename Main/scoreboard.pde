class scoreBoard extends rectangles {
   PFont font;
  String score = "0";
  
  scoreBoard(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
   font = createFont("Calibri",20);
    textAlign(CENTER,CENTER);
    textFont(font,displayHeight);
  }//end scoreBoard
  
  
  
  color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    
  }//end updateSetup
  //
  void draw() {
    text(score,Xposition,Yposition,Width,Height);
  }//end draw
  //
  void keyPressed() {
    
  }//end keyPressed
  //
  void keyReleased() {
    
  }//end keyReleased
}
