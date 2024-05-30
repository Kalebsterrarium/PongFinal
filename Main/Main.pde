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
   Net LeftNet = new Net(appWidth*0,appHeight*1/10,ballDiameter*2,appHeight*8/10, netcolour);
   Net RightNet = new Net(appWidth - LeftNet.Width,appHeight*1/10,ballDiameter*2,appHeight*8/10, netcolour);
   Paddles LeftPaddle = new Paddles(LeftNet.Xposition + LeftNet.Width, appHeight/2 - ballDiameter*5/2 ,ballDiameter*1/2, ballDiameter*5, color(#00FF00));
   Paddles RightPaddle = new Paddles(RightNet.Xposition - ballDiameter*1/2, appHeight/2 - ballDiameter*5/2 ,ballDiameter*1/2, ballDiameter*5, color(#00FF00));
   LeftNet.updateSetup(PongTable.Height,0,0);
   RightNet.updateSetup(PongTable.Height,0,0);
  PongTable.updateSetup(appHeight*1/10,appHeight*9/10,appWidth*1/2);
  LeftPaddle.updateSetup(PongTable.CenterlineX,3,0);
  RightPaddle.updateSetup(PongTable.CenterlineX,3,0);
  Shape.add(PongTable);
  Shape.add(LeftNet);
   Shape.add(RightNet);
   Shape.add(LeftPaddle);
   Shape.add(RightPaddle);
   //println(Shape[4].YMovement);
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
 for ( shapes s : Shape) {
    s.keyPressed();
  }
}//end keypressed
//
void keyReleased() {
  
}//end keyreleased
