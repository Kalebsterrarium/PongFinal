//global variables
ArrayList<shapes> Shape = new ArrayList<shapes>();
//
void setup() {
  fullScreen();
  display();
  int ballDiameter = appWidth*1/64;
  color BackGround = color(#FFFF00);
  color netcolour = color(#0000FF);
  pongTable PongTable = new pongTable(appWidth*0,appHeight*1/10,appWidth,appHeight*8/10,BackGround);
   Net Nets = new Net(appWidth*0,appHeight*1/10,ballDiameter*2,appHeight*8/10, netcolour);
   Nets.updateSetup(0,appWidth*0,appWidth - Nets.Width);
  PongTable.updateSetup(appHeight*1/10,appHeight*9/10,appWidth*1/2);
  Shape.add(PongTable);
  Shape.add(Nets);
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
