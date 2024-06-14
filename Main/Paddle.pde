class Paddles extends rectangles {
 float PaddleTop,PaddleBottom;
 float PongTableMiddle;
 float TableTop,TableBottom;
 boolean Up[] = new boolean[2];
 boolean Down[] = new boolean[2];
  Paddles(float Xposition, float Yposition, float Width, float Height, color Colour) {
     super(Xposition,Yposition,Width,Height,Colour);
  }
  //
  void draw() {
     if(Shape.get(10).GameStart == false && Shape.get(11).GameStart == false) { 
   Yposition=  appHeight/2 - (appWidth/64)*5/2;
    }
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    PaddleTop = Yposition;
   PaddleBottom = Yposition + Height;
  paddlemove();
   
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float PTM, float MY, float TT, float TB,float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    PongTableMiddle = PTM;
    YMovement= MY;
   
    TableTop=TT;
    TableBottom=TB;
  }//end updatesetup
  void paddlemove() {
    if(Xposition > PongTableMiddle) {
      if(Up[0] == true) {
      Yposition-=YMovement;
      }
      if(Down[0]==true ) {
        Yposition+=YMovement;
      }
      if(PaddleTop < TableTop) {
        Yposition= TableTop;
      }
      if(PaddleBottom > TableBottom) {
        Yposition= TableBottom-Height;
      }
      
    } else {
       if(Up[1] == true) {
      Yposition-=YMovement;
      }
      if(Down[1]==true ) {
        Yposition+=YMovement;
      }
      if(PaddleTop < TableTop) {
        Yposition= TableTop;
      }
      if(PaddleBottom > TableBottom) {
        Yposition= TableBottom-Height;
      }
    }
  }//end paddlemove
  //
  void PaddleAI() {
    if ( Shape.get(11).GameStart == true);
  }//end PaddleAI 
  //
  void keyPressed() {
  if ( key==CODED & keyCode==UP) Up[0]=true ;
  if ( key==CODED & keyCode==DOWN) Down[0] = true ;
  if ( key=='w' || key=='W') Up[1]=true ;
  if ( key=='s' || key=='S') Down[1] = true ;
  }//end keyPressed
  //
  void keyReleased() {
  if ( key==CODED & keyCode==UP) Up[0]=false ;
  if ( key==CODED & keyCode==DOWN) Down[0] = false ;
  if ( key=='w' || key=='W') Up[1]=false ;
  if ( key=='s' || key=='S') Down[1] = false ;
  }//end keyReleased
  //
  void mousePressed() {
  }//end mousePressed
}//end Paddles
