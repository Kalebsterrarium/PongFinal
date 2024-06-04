class balls extends circles {
  float Xmovement,Ymovement;
  float TableTop,TableBottom,TableMiddle;
  balls(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end balls
  
  void draw() {
    fill(Colour);
    ellipse(Xposition,Yposition,Width,Height);
    move();
  }//end draw
  //
  color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float TT,float TB, float TM, float vari4) {
    TableTop=TT;
    TableBottom=TB;
    TableMiddle=TM;
    //
     Xmovement+=xdirection();
   Ymovement+=ydirection();
  }//end updateSetup
  //
 void move() {
  Xposition+=Xmovement;
  Yposition+=Ymovement;
   bounce();
  }//end move
  //
  float xdirection() {
    float xdirection = int(random(-9,9));
     while ( xdirection == 0) xdirection = int(random(-9,9));
   if ( xdirection < 5 && xdirection > 0) {
     while(xdirection < 5) {
    xdirection = int(random(9));
    
     }
   } else if (xdirection > -5 && xdirection < 0 ) {
      while(xdirection > -5) {
    xdirection = int(random(-9));
     }
   }
   return xdirection;
  }//end xdirection
  //
  float ydirection() {
     float ydirection = int(random(-9,9));
     while ( ydirection == 0) ydirection = int(random(-9,9));
   if ( ydirection < 5 && ydirection > 0) {
     while(ydirection < 5) {
    ydirection = int(random(-9,9));
    
     }
   } else if (ydirection > -5 && ydirection < 0 ) {
      while(ydirection > -5) {
    ydirection = int(random(-9,9));
     }
   }
   return ydirection;
  }//end ydirection
  //
  void bounce() {
    if(Yposition - Width/2 <= TableTop) {
      Ymovement*=-1;
    }
    
    if(Yposition + Width/2 >= TableBottom) {
      Ymovement*=-1;
    }
  }//end bounce
  //
  void keyPressed() {
  }//end keyPressed
  //
  void keyReleased() {
  }//end keyReleased
}//end ball class
