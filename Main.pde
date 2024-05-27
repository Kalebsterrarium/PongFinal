//global variables
ArrayList<shapes> Shape = new ArrayList<shapes>();
//
void setup() {
  fullScreen();
  display();
  int ballDiameter = appWidth*1/64;
  color BackGround = color(#FFFF00);
  pongTable PongTable = new pongTable(appWidth*0,appHeight*1/10,appWidth,appHeight*8/10,BackGround);
  PongTable.updateSetup(appHeight*1/10,appHeight*9/10,appWidth*1/2);
  Shape.add(PongTable);
}//end setup
//
void draw() {
  for ( shapes s : Shape) {
    s.draw();
  }
}//end draw
//
void mousePressed() {
  
}//end mousepressed
//
void keyPressed() {
  
}//end keypressed
//
void keyReleased() {
  
}//end keyreleased
