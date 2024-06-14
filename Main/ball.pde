class balls extends circles {
  float Xmovement,Ymovement;
  float TableTop,TableBottom,TableMiddle;
  float LeftPaddleTop,LeftPaddleBottom,RightPaddleTop,RightPaddleBottom;
  float PongTableLeft, PongTableRight;
  int timer;
  balls(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
  }//end balls
  
  void draw() {
    LeftPaddleTop = Shape.get(3).Yposition;
    LeftPaddleBottom = (Shape.get(3).Yposition + Shape.get(3).Height);
    RightPaddleTop = Shape.get(4).Yposition;
    RightPaddleBottom = (Shape.get(4).Yposition + Shape.get(4).Height);
    if(Shape.get(10).GameStart == false && Shape.get(11).GameStart == false) { 
     timer= 0;
     BallStop = true;
    }
    if (Shape.get(10).GameStart== true || Shape.get(11).GameStart== true  ) {
    fill(Colour);
    ellipse(Xposition,Yposition,Width,Height);
    
   
   if ( BallStop==false && ( Xposition>LeftEdge && Xposition<RightEdge ) ) { 
      move(); 
    } else if ( Xposition<=LeftEdge ) { 
      Xposition = PongTableLeft+Width;
      if(BallStop == false) timer = 0;
      BallStop=true;
      Goal[0]=true;
    } else if ( Xposition>=RightEdge ) {
      Xposition = PongTableRight-Width; 
      if(BallStop == false) timer = 0;
      BallStop=true;
      Goal[1]=true;
    }
    if (BallStop == true && timer < 100) {
      Xposition = displayWidth/2;
      Yposition = displayHeight/2;
      Xmovement=0;
      Ymovement=0;
      if ( timer != 0) {
      for(int i=0;i<2;i++) {
        Goal[i] = false;
      }
      }
      if(timer == 99) {
      
      Xmovement=xdirection();
   Ymovement=ydirection();
      BallStop = false;
      
      }
      
      timer+=1;
    }
    }
  }//end draw
  //
  color colours() {
    color c = 3;
    return c;
  }//end colours
  //
  void updateSetup(float TT,float TB, float TM, float LPT, float LPB,float RPT, float RPB,float EL, float RE, float PTL , float PTR) {
    TableTop=TT;
    TableBottom=TB;
    TableMiddle=TM;
    //
    LeftPaddleTop=LPT;
    LeftPaddleBottom=LPB;
    RightPaddleTop=RPT;
    RightPaddleBottom=RPB;
    //
    LeftEdge = EL;
    RightEdge = RE;
    //
      PongTableLeft = PTL;
    PongTableRight = PTR;
    //
     Xmovement+=xdirection();
   Ymovement+=ydirection();
   //
   BallStop=true;
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
    if(Yposition - Width/2 <= TableTop || Yposition + Width/2 >= TableBottom) {
      Ymovement*=-1;
    }
    
    if (Xposition < TableMiddle*1/2 && Xposition < LeftEdge+(Width*1/2) ) {
      if ( Yposition > LeftPaddleTop && Yposition < LeftPaddleBottom ) {
      
      
      
      Xmovement *= -1;
    Xposition = (Shape.get(3).Xposition + Shape.get(3).Width) + Width/2;
  }
    }
    if (Xposition > TableMiddle*3/2 && Xposition > RightEdge-(Width*1/2)) {
      if ( Yposition > RightPaddleTop && Yposition < RightPaddleBottom ) {
        
        Xmovement *= -1;
        Xposition = (Shape.get(4).Xposition - Shape.get(4).Width) ;
    }
    }
  }//end bounce
  //
  void Ballanimation() {
    
  }//end Ballanimation
  //
  void keyPressed() {
  }//end keyPressed
  //
  void keyReleased() {
  }//end keyReleased
  //
  void mousePressed() {
  }//end mousePressed
}//end ball class
