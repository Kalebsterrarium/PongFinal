class ghostballbutton extends rectangles {
 
  float activatedX,activatedWidth,activatedY;
    ghostballbutton(float Xposition, float Yposition, float Width, float Height, color Colour) {
    super(Xposition,Yposition,Width,Height,Colour);
    activatedX = Xposition;
       activatedY= Yposition;
       activatedWidth = Width;
        
  }//end returnmenu
  //
  void draw() {
  
     if (Shape.get(11).GameStart== true && Shape.get(12).GameStart== false  ) { 
  
    if (Xposition < displayWidth/2) {
        fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    fill(color(#FF0000),170);
    rect(activatedX,activatedY,activatedWidth,YMovement);
    if (GameStart == true && Shape.get(16).GameStart == true && Shape.get(16).Goal[1] == false && Shape.get(16).Goal[0] == true ) {
      YMovement-= Height/400.0;
      if(Shape.get(16).timer <= 0) {
        YMovement = Height;
        Shape.get(16).Goal[0] = false;
      }
      }
      if(GameStart == true && Shape.get(16).GameStart == false && YMovement > 0) {
        YMovement-=0.03;
      } else if( YMovement <= 0) {
        GameStart =false;
         Shape.get(16).Goal[1] = false;
      }
    } else {
        fill(Colour);
    rect(Xposition,Yposition,Width,Height);
    fill(color(#FF0000),170);
    rect(activatedX,activatedY,activatedWidth,YMovement);
      if (GameStart == true && Shape.get(16).GameStart == true && Shape.get(16).Goal[0] == false  && Shape.get(16).Goal[1] == true) {
      YMovement-= Height/400.0;
      if(Shape.get(16).timer <= 0) {
        YMovement = Height;
      }
      }
      if(GameStart == true && Shape.get(16).GameStart == false && YMovement > 0) {
        YMovement-=0.03;
      } else if( YMovement <= 0) {
        GameStart =false;
      }
    }
      
     }
 
  
  }//end draw
  //
   color colours() {
    color c = 3;
    return c;
  }
  //
  void updateSetup(float vari1, float vari2, float vari3,float vari4, float vari5, float vari6,float vari7, float vari8,float vari9, float vari10, float vari11) {
    
  }//end updateSetup
  //
  void keyPressed() {
    
  }// keyPressed
  //
  void keyReleased() {
    
  }//end keyReleased
  //
  void mousePressed() {
    if(mouseX>Xposition && mouseX<Xposition+Width && mouseY>Yposition && mouseY<Yposition+Height) {
      if( Shape.get(11).GameStart== true && Shape.get(12).GameStart== false) {
      if(Xposition < displayWidth/2) {
        if(GameStart == false && Shape.get(16).GameStart == false ) {
       YMovement = Height;
      GameStart = true;
      Shape.get(16).GameStart = true;
      Shape.get(16).timer = 200;
      }
      } else {
       if (GameStart == false && Shape.get(16).GameStart == false ) {
         YMovement = Height;
      GameStart = true;
      Shape.get(16).GameStart = true;
      Shape.get(16).timer = 200;
       }
      }
    }
    }
  }//end mousePressed
  
  
  
  
  
  
  
}//end returnmenu class
