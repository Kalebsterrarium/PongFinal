class pongTable extends rectangles{
  float CenterlineY_Top,CenterlineY_Bottom,CenterlineX;
  
  pongTable(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
    
  }//end pongTable
  //
  void draw() {
    noStroke();
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    //
    stroke(200);
    line(CenterlineX, CenterlineY_Top,CenterlineX, CenterlineY_Bottom);
    noStroke();
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float CLYT,float CLYB, float CLX, float vari4,float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    CenterlineY_Top = CLYT;
    CenterlineY_Bottom = CLYB;
    CenterlineX = CLX;
  }//end updateSetup
  //
  void keyPressed() {}
  //
  void keyReleased() {}
  //
  void mousePressed() {
  }//end mousePressed
}//end pongTable class
