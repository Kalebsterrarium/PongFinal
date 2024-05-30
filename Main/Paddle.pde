class Paddles extends rectangles {
 float PongTableMiddle;
 boolean Up[] = new boolean[2];
 boolean Down[] = new boolean[2];
  Paddles(float Xposition, float Yposition, float Width, float Height, color Colour) {
     super(Xposition,Yposition,Width,Height,Colour);
  }
  //
  void draw() {
    fill(Colour);
    rect(Xposition,Yposition,Width,Height);
  paddlemove();
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float PTM, float MY, float vari3) {
    PongTableMiddle = PTM;
    YMovement= MY;
  }//end updatesetup
  void paddlemove() {
    if(Xposition > PongTableMiddle) {
      if(Up[0] == true) {
        println("moving");
      Yposition-=YMovement;
      println(YMovement);
      }
    } else {
      if(Up[1] == true) {
       Yposition-=YMovement;
      }
    }
    println(Up[0]);
  }//end paddlemove
  //
  void keyPressed() {
     if ( key==CODED & keyCode==UP) Up[0]=true ;
  if ( key==CODED & keyCode==DOWN) Down[0] = true ;
  }//end keyPressed
  //
  void keyReleased() {
     if ( key==CODED & keyCode==UP) Up[0]=false ;
  if ( key==CODED & keyCode==DOWN) Down[0] = false ;
  }//end keyReleased
}//end Paddles
